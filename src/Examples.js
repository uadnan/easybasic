path = `${apppath}/json/Examples.json`;

var options = {
    valueNames: ['name', 'type'],
    item: '<li class="mdl-list__item mdl-list__item--two-line Example-li" onclick="openExample(this);">'+
    '<span class="mdl-list__item-primary-content"><i class="icn icn-docs mdl-list__item-icon"></i><span class="name"></span>'+
    '<span class="mdl-list__item-sub-title type"></span></span>'+
    '</li>'
};
var json;
if(!demo){
    fs.stat(path, function (err, stats) {
        if (err) {
            alert(err);
        }
    })
    json = fs.readFileSync(path, "utf8");
    obj = JSON.parse(json);
    var values = obj.examples;
    var userList = new List('users', options, values);
}
else{
    $.getJSON('https://raw.githubusercontent.com/naumanumer/easybasic/master/json/Examples.json', function(data) {
        var values = data.examples;
        var userList = new List('users', options, values);
    });
}
function openExample(element) {
    var filename = element.querySelectorAll('.name')[0].innerHTML + ".bas";
    console.log(filename);
    var path = ".\\Examples\\" + filename;
    openFile(path);
}