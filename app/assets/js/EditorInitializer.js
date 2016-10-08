var editor;
function InitializeEditor(id, value = '', language='gb'){
    editor = monaco.editor.create(document.getElementById(id), {
        value: value,
        language: language,
        parameterHints: true,
        automaticLayout:true,
        folding: true,
        theme: 'material-dark'
    });
}