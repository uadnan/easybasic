var path = require('path');
function uriFromPath(_path) {
    var pathName = path.resolve(_path).replace(/\\/g, '/');
    if (pathName.length > 0 && pathName.charAt(0) !== '/') {
        pathName = '/' + pathName;
    }
    return encodeURI('file://' + pathName);
}
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