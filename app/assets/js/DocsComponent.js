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
function getDocpath(name){
    return path.join(__dirname, `./docs/${name}.md`)
}
function getTextFormFile(path, encoding = "utf-8"){
    return fs.readFileSync(path, encoding);
}
function openDoc(name){
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
    MainDockerLayout.selectedItem.addChild( docitem );
}
