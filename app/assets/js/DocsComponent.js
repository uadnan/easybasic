var showdown  = require('showdown'),
    path = require('path'),
    fs = require('fs'),
    converter = new showdown.Converter();

MainDockerLayout.registerComponent( 'docs', function( container, state ){
    container.getElement().html('<div class="doc-body" id="'+state.id+'"></div>');
    InitializeDocs(state.id, state.name);
});
function InitializeDocs(id, name){
    var text = getTextFormFile(getDocpath(name));
    var html = converter.makeHtml(text)
    console.log('#'+id);
    $('#'+id).append(html);
}
function getDocpath(name){
    return path.join(__dirname, `./docs/${name}.html`)
}
function getTextFormFile(path, encoding = "utf8"){
    return fs.readFileSync(path, encoding);
}