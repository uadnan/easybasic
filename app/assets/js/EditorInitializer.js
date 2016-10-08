var path = require('path');
amdRequire.config({
    baseUrl: uriFromPath(path.join(__dirname, './lib/monaco-editor/min'))
});
var Monaco;
amdRequire(['vs/editor/editor.main'], function() {
    Monaco = monaco;
})

function InitializeEditor(id, grammer = 'gb'){
    var editor = Monaco.editor.create(document.getElementById(id), {
        language: grammer,
        theme: 'material-dark'
    });
}