String.prototype.replaceAll = function (search, replacement) {
    var target = this;
    return target.split(search).join(replacement);
};
function uriFromPath(_path) {
    var pathName = path.resolve(_path).replace(/\\/g, '/');
    if (pathName.length > 0 && pathName.charAt(0) !== '/') {
        pathName = '/' + pathName;
    }
    return encodeURI('file://' + pathName);
}
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