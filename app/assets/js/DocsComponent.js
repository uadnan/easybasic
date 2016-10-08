var showdown  = require('showdown'),
    path = require('path'),
    converter = new showdown.Converter();

MainDockerLayout.registerComponent( 'docs', function( container, state ){
    container.getElement().html('<div class="doc-body" id="'+state.id+'"></div>');
    InitializeDocs(state.id, state.name);
});

function InitializeDocs(id, name){
    var text = getTextFormFile(getDocpath(name));
}

function getDocpath(name){
    return path.join(__dirname, '../node_modules/monaco-editor/min')
}