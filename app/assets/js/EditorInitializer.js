var editorNum =1;
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
        theme: 'material-dark',
        automaticLayout: true
    });
}
function getEditorConfig(){
    var config= {
        title: 'Untitiled'+ (editorNum==1 ? "" : " "+editorNum),
        type: 'component',
        componentName: 'Editor',
        componentState: { name: "Untitiled"+ (editorNum==1 ? "" : editorNum), id: 'editor'+editorNum }
    };
    return config;
}
function addNew(){
    var item =getEditorConfig();
    MainDockerLayout.root.contentItems[ 0 ].contentItems[0].addChild( item );
}