$(function(){
    /**************************************************
     * Custom Command Handler
     **************************************************/
    $.contextMenu.types.label = function(item, opt, root) {
        this === item.$node

        $('<span>'+ item.text + '</span>'+
            '<span class="pull-right shortcut">'+ item.shortcut + '</span>')
            .appendTo(this)
            .on('click', 'li', function() {
                root.$menu.trigger('contextmenu:hide');
            });
    };

    /**************************************************
     * Context-Menu with custom command "label"
     **************************************************/
    $.contextMenu({
        selector: '#myTab li',
        items: {
            "close": {type: "label", text: "Close This Tab", shortcut: "Ctrl + W"},
            "closeOthers": {type: "label", text: "Close Other Tabs", shortcut: ""},
            "closeRigth": {type: "label", text: "Close Right", shortcut: ""},
            "closeAll": {type: "label", text: "Close All", shortcut: ""},
            "sep1": "---------",
            "save": {type: "label", text: "Save", shortcut: ""},
            "saveAll": {type: "label", text: "Save All", shortcut: ""},
            "sep2": "---------",
            "run": {type: "label", text: "Run", shortcut: ""},
            "runAll": {type: "label", text: "Run All", shortcut: ""},
        }
    });
});