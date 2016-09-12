function swapStyleSheet() {
    var select= window.top.document.getElementById('theme');
    var selected = $(select).val();

    var pagelink;
    var codelink;
    var docStyle;

    if (selected == "Codepen"){
        pagelink = "../assets/css/bootstrap-dark.css";
        codelink = "../../node_modules/highlight.js/styles/agate.css";
        docStyle = "";
    }
    else if(selected == "Solarized Dark"){
        pagelink = "../assets/css/bootstrap-dark.css";
        codelink = "../../node_modules/highlight.js/styles/agate.css";
        docStyle = "";
    }
    else if (selected == "VS Dark"){
        pagelink = "../assets/css/bootstrap-dark.css";
        codelink = "../../node_modules/highlight.js/styles/agate.css";
        docStyle = "";
    }
    else if (selected == "Material Dark"){
        pagelink = "../assets/css/bootstrap-dark.css";
        codelink = "../../node_modules/highlight.js/styles/agate.css";
        docStyle = "styles/MaterialDark.css";
    }
    else if (selected == "Github"){
        pagelink = "../assets/css/bootstrap.min.css";
        codelink = "../../node_modules/highlight.js/styles/github.css";
        docStyle = "";
    }
    else if (selected == "Solarized Light"){
        pagelink = "../assets/css/bootstrap.min.css";
        codelink = "../../node_modules/highlight.js/styles/github.css";
        docStyle = "";
    }
    else if (selected == "VS default"){
        pagelink = "../assets/css/bootstrap.min.css";
        codelink = "../../node_modules/highlight.js/styles/github.css";
        docStyle = "";
    }
    else if (selected == "Material Light"){
        pagelink = "../assets/css/bootstrap.min.css";
        codelink = "../../node_modules/highlight.js/styles/github.css";
        docStyle = "styles/MaterialLight.css";
    }
    document.getElementById("pagestyle").setAttribute("href", pagelink);
    document.getElementById("DocStyle").setAttribute("href", docStyle);
    if (document.getElementById("codestyle"))
        document.getElementById("codestyle").setAttribute("href", codelink);
}
swapStyleSheet();


$('#doc-body').slimScroll({
    height: $(window).height(),
    railVisible: false,
    railColor: '#222',
    railOpacity: 0.01,
    size: '12px',
    color: '#000'
});
window.addEventListener('resize', function (event) {
    $('#doc-body')[0].parentElement.style.height = ($(window).height()) + "px";
    $('#doc-body').height($(window).height());
})
$(document).ready(function(){
    window.top.document.getElementById('status').innerHTML = "Document Loaded";
})