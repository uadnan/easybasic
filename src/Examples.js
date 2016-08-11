path = './src/Examples.json';

var options = {
    valueNames: ['name', 'type'],
    item: '<li class="list-group-item Example-li" onclick="openExample(this);"><p class="name" style="font-size: 14px;"></p><strong class="type"></strong></li>'
};
fs.stat(path, function (err, stats) {
    if (err) {
        alert(err);
    }
})
var json = fs.readFileSync(path, "utf8");
obj = JSON.parse(json);
var values = obj.examples;
var userList = new List('users', options, values);

function openExample(element) {
    var filename = element.getElementsByTagName('p')[0].innerHTML + ".bas";
    var path = ".\\Examples\\" + filename;
    openFile(path);
}