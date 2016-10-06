var Monaco;
require.config({ paths: { 'vs': 'lib/monaco-editor/min/vs' }});
require(['vs/editor/editor.main'], function() {
    Monaco = monaco;
});
function InitializeEditor(id, value = '', language='gb'){
    var editor = Monaco.editor.create(document.getElementById(id), {
        value: value,
        language: language,
        parameterHints: true,
        automaticLayout:true,
        folding: true,
        theme: 'material-dark'
    });
}