<<<<<<< HEAD
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
=======
function InitializeEditor(id, value = '', language='gb'){
    // var editor = Monaco.editor.create(document.getElementById(id), {
    //     value: value,
    //     language: language,
    //     parameterHints: true,
    //     automaticLayout:true,
    //     folding: true,
    //     theme: 'material-dark'
    // });
>>>>>>> 09519d2af405a4fd1b3f0e2f285aa1761cc7e5f4
}