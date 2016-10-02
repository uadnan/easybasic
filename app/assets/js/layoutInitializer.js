var config = {
    settings:{
        hasHeaders: true,
        constrainDragToContainer: true,
        reorderEnabled: true,
        selectionEnabled: true,
        popoutWholeStack: false,
        blockedPopoutsThrowError: true,
        closePopoutsOnUnload: true,
        showPopoutIcon: false,
        showMaximiseIcon: false,
        showCloseIcon: true
    },
    dimensions: {
        borderWidth: 5,
        minItemHeight: 10,
        minItemWidth: 10,
        headerHeight: 50,
        dragProxyWidth: 300,
        dragProxyHeight: 200
    },
    content: [{
        type: 'row',
        content: [
            {
            type:'component',
            componentName: 'example',
            componentState: { text: 'Component 1' }
            }
        ]
    }]
};

var myLayout = new GoldenLayout( config, $('#MainDocker') );

myLayout.registerComponent( 'example', function( container, state ){
    container.getElement().html( '<h2>' + state.text + '</h2>');
});
$(document).ready(function () {
    // spliting main and side pane
    $("#MainSideSplitter").jqxSplitter({
        width: '100%',
        height: '100%',
        splitBarSize: 4,
        panels: [{
            min: 200,
            size: 220
        },{
            min: 300,
        }]
    });

    // spliting main pane
    $("#MainhorizontalSplitter").jqxSplitter({
        width: '100%',
        height: '100%',
        splitBarSize: 4,
        orientation: 'horizontal',
        panels: [{
            min: 200,
            size: '100%',
            collapsible: false
        },{
            min: 60,
            size: 100,
            collapsed: true
        }]
    });

    myLayout.init();
    var fisrtItem = myLayout.root.contentItems[0];
    myLayout.selectItem(fisrtItem);
});

$(window).resize(function() {
    setTimeout(function(){
        myLayout.updateSize();
    }, 200)
})