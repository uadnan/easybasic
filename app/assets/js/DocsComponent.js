var showdown  = require('showdown'),
    path = require('path'),
    fs = require('fs'),
    converter = new showdown.Converter({tables: true});

MainDockerLayout.registerComponent( 'docs', function( container, state ){
    container.getElement().html('<div class="doc-body" id="'+state.id+'"></div>');
    InitializeDocs(state.id, state.name);
});
function InitializeDocs(id, name){
    var text = getTextFormFile(getDocpath(name));
    var html = converter.makeHtml(text)
    var credits = `<div class="credits">
                    <span>
                        <span class="caption">Taken from:</span>
                        <span>http://robhagemans.github.io/pcbasic/doc/</span>
                    </span>
                    <span class="pull-right">
                        <span class="caption">MarkDown written by:</span>
                        <span>Zain Akbar</span>
                    </sapn>
                    </div>`;
    id = '#'+id;
    $(id).ready(function() {
        $(id).append(html+credits);
    });
    
}
function getDocpath(name, extension="md"){
    return path.join(__dirname, `./docs/${name}.${extension}`)
}
function getTextFormFile(path, encoding = "utf-8"){
    return fs.readFileSync(path, encoding);
}
function onDocsClick(element){
    var firstSpan = element.getElementsByTagName('span')[0]
    var name = firstSpan.getElementsByTagName('span')[1].innerHTML;
    openDocs(name);
}
function openDocs(name){
    if (name == "Language Guide" ||
        name == "Calculations and maths" ||
        name == "Devices and files" ||
        name == "Language reference" ||
        name == "Operators" ||
        name == "Errors and Messages" ||
        name == "Technical reference" ||
        name == "Keycodes" ||
        name == "Acknowledgements" ||
        name == "Statements")
        console.info(`No documenation available for '${name}' `);


    var id = ((String(name).replaceAll(" ", "_") + "_tabli").replaceAll("$", "_s")).replaceAll("(", "").replaceAll(")", "");
    var docitem= {
        title: name,
        type: 'component',
        componentName: 'docs',
        componentState: { name: name, id: id }
    };
    if(!(MainDockerLayout.root.contentItems[ 0 ])) {
        alert('Oops! Something wants wrong. :(')
    } else {
        MainDockerLayout.root.contentItems[ 0 ].contentItems[0].addChild( docitem );
    }
}

var hudDocs = [];
function addDocsList(){
    var docsJson = getTextFormFile(getDocpath('docs', 'json'));
    var docsObj = JSON.parse(docsJson);
    var list = "";

    docsObj.doc.forEach(function (node) {
        if (typeof (node) == "string") {
            list += '<li onclick="onDocsClick(this)"><span class="nav-group-item"><span class="fa fa-file-o"></span><span class="name">' + node + '</span></span></li>'
            hudDocs.push({
                'caption': node,
                'command': 'onDocsClick'
            })
        }
        else if (typeof (node) == "object") {
            list += '<li onclick="onDocsClick(this)"><span class="nav-group-item" style="padding-left:0px;"><span class="fa fa-folder-open-o"></span><span class="name">' + node.name + '</span></span></li>'
            hudDocs.push({
                'caption': node.name,
                'command': 'onDocsClick'
            })
            node.data.forEach(function (subnode) {
                if (typeof (subnode) == "string") {
                    list += '<li onclick="onDocsClick(this)"><span class="nav-group-item" style="padding-left:10px;"><span class="fa fa-file-o"></span><span class="name">' + subnode + '</span></span></li>'
                    hudDocs.push({
                        'caption': subnode,
                        'command': 'onDocsClick'
                    })
                }
                else if (typeof (subnode) == "object") {
                    list += '<li onclick="onDocsClick(this)"><span class="nav-group-item" style="padding-left:10px;"><span class="fa fa-folder-open-o"></span><span class="name">' + subnode.name + '</span></span></li>'
                    hudDocs.push({
                        'caption': subnode.name,
                        'command': 'onDocsClick'
                    })
                    subnode.data.forEach(function (sub_subnode) {
                        list += '<li onclick="onDocsClick(this)"><span class="nav-group-item" style="padding-left:30px;"><span class="fa fa-file-o"></span><span class="name">' + sub_subnode + '</span></span></li>'
                        hudDocs.push({
                            'caption': sub_subnode,
                            'command': 'onDocsClick'
                        })
                    }, this);
                }
            }, this);
        }
    }, this);

    document.getElementById('doc-list').innerHTML = list;
}