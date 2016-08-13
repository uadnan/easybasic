const remote = require('electron').remote;

const ipc = require('electron').ipcRenderer


var grammer = "";
var filepath = "";
var text = "";
var EndOfLineSequence = "";
var encoding = "";

document.getElementById("min-btn").addEventListener("click", function (e) {
    var window = remote.getCurrentWindow();
    window.minimize();
});

document.getElementById("max-btn").addEventListener("click", function (e) {
    var window = remote.getCurrentWindow();
    if (!window.isMaximized()) {
        window.maximize();
    } else {
        window.unmaximize();
    }
});

document.getElementById("close-btn").addEventListener("click", function (e) {
    var window = remote.getCurrentWindow();
    window.close();
});

var options = {
    valueNames: ['name', 'type']
};

var userList = new List('docs-list', options);

$(window).resize(function () {
    $('.some-content-related-div').height($(document).height() - 42 - 24 - 35);
})

$('.some-content-related-div').height($(document).height() - 42 - 24 - 35);

$('#doc-list-div').slimScroll({
    height: $(window).height() - 140,
    railVisible: false,
    railColor: '#222',
    railOpacity: 0.01,
    size: '12px',
    color: '#000'
});
$('#example-list-div').slimScroll({
    height: $(window).height() - 140 - 24 - 10,
    railVisible: false,
    railColor: '#222',
    railOpacity: 0.01,
    size: '12px',
    color: '#000'
});
$('#recent-list-div').slimScroll({
    height: $(window).height() - 140 - 205,
    railVisible: false,
    railColor: '#222',
    railOpacity: 0.01,
    size: '12px',
    color: '#000'
});
function shadow(sendr) {
    var id = sendr.id;
    var sender = $("#" + id)
    if (sender.scrollTop() == 0) {
        sender.removeClass('drop-shadow');
    }
    else {
        sender.addClass('drop-shadow');
    }
}
window.addEventListener('resize', function (event) {
    $('#recent-list-div')[0].parentElement.style.height = ($(window).height() - 140 - 205) + "px";
    $('#recent-list-div').height($(window).height() - 140 - 205);

    $('#example-list-div')[0].parentElement.style.height = ($(window).height() - 140 - 24 - 10) + "px";
    $('#example-list-div').height($(window).height() - 140 - 24 - 10);

    $('#doc-list-div')[0].parentElement.style.height = ($(window).height() - 140) + "px";
    $('#doc-list-div').height($(window).height() - 140);
})

$('#createNewScript').on('click', function () {
    grammer = "gb";
    EndOfLineSequence = "CRLF";
    encoding = "utf8";
    text = "10 ' Write your basic code here\n20 "
    addtab('Editor', "Untitled", "Editor.html");
})
$('#openScript').on('click', function () {
    ipc.send('open-file-dialog');
})

ipc.on('opened-file', function (event, path) {
    path = path[0];
    addToRecent(path);
    openFile(path);
})
function openFile(path) {
    if (window.filepath != "") {
        return alert("Please Wait While Another File is Loading...")
    }
    window.filepath = path;
    fs.stat(path.toString(), function (err, stats) {
        if (err) {
            window.filepath = ""
            return alert(err);
        }
    })
    text = fs.readFileSync(path, "utf8");
    EndOfLineSequence = "CRLF";
    encoding = "utf8";
    var name = filepath.toString().split("\\")[filepath.toString().split("\\").length - 1];
    var extension = name.split(".")[name.split(".").length - 1];

    if (extension.toLowerCase() == "bas")
        grammer = "gb";
    else if (extension.toLowerCase() == "json")
        grammer = "json";
    else if (extension.toLowerCase() == "css")
        grammer = "css";
    else if (extension.toLowerCase() == "js")
        grammer = "javascript";
    else if (extension.toLowerCase() == "html")
        grammer = "html";
    else
        grammer = "";

    addtab('Editor', name, "Editor.html");
}

function openOrigianl() {
    ipc.send('open-file-o-dialog');
}
function openModified() {
    ipc.send('open-file-m-dialog');
}

ipc.on('opened-o-file', function (event, path) {
    addToRecent(path);
    document.getElementById('originalPath').innerHTML = path;
    var name = path.toString().split("\\")[path.toString().split("\\").length - 1];
    document.getElementById('originalName').innerHTML = name;
})

ipc.on('opened-m-file', function (event, path) {
    addToRecent(path);
    document.getElementById('modifiedPath').innerHTML = path;
    var name = path.toString().split("\\")[path.toString().split("\\").length - 1];
    document.getElementById('modifiedName').innerHTML = name;
})

function compare() {
    var originalPath = document.getElementById('originalPath').innerText;
    var modifiedPath = document.getElementById('modifiedPath').innerText;
    var originalName = document.getElementById('originalName').innerHTML;
    var modifiedName = document.getElementById('modifiedName').innerHTML;
    if (originalPath && modifiedPath)
        addtab('Editor', originalName + " ↔ " + modifiedName, "DiffEditor.html");
}
$('#themes').change(function () {
    var selectedText = $(this).find("option:selected").text();
    if (selectedText == "Codepen" ||
        selectedText == "Solarized Dark" ||
        selectedText == "VS Dark")
        {
            swapStyleSheet('./assets/css/photon-dark.css');
            setEditorTheme(selectedText);
            setDocTheme("Dark");
        }
    else if (selectedText == "Github" ||
        selectedText == "Solarized Light" ||
        selectedText == "VS default")
        {
            swapStyleSheet('./assets/css/photon.min.css');
            setEditorTheme(selectedText);
            setDocTheme("Light");
        }
});

function setEditorTheme(theme){
    var iframes= $('#tab-box iframe');
    for (i = 0; i < iframes.length; i++) {
        if(iframes[i].contentWindow.document.getElementById('container')){
            iframes[i].contentWindow.setTheme(theme);
        }
    }
}
function setDocTheme(theme){
    var iframes= $('#tab-box iframe');
    for (i = 0; i < iframes.length; i++) {
        if(iframes[i].contentWindow.document.getElementById('doc-body')){
            iframes[i].contentWindow.swapStyleSheet(theme);
        }
    }
}