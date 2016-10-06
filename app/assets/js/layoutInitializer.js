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
            componentName: 'Editor',
            title: 'Untitled',
            componentState: { path: 'Component 1', id: 'Editor1' }
            }
        ]
    }]
};

var bottom_config = {
    settings:{
        hasHeaders: true,
        constrainDragToContainer: true,
        reorderEnabled: true,
        selectionEnabled: false,
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
        headerHeight: 30,
        dragProxyWidth: 300,
        dragProxyHeight: 200
    },
    content: [{
        type: 'row',
        content: [
            {
            type:'component',
            componentName: 'Editor',
            title: 'nauman',
            componentState: { text: 'Component 1' }
            }
        ]
    }]
};

var MainDockerLayout = new GoldenLayout( config, $('#MainDocker') );
var BottomDockerLayout = new GoldenLayout( bottom_config, $('#bottomPane') );

MainDockerLayout.registerComponent( 'Editor', function( container, state ){
    container.getElement().html('<div class="Editor" id="'+state.id+'"></div>');
    
});
MainDockerLayout.on('tabCreated', function(e){
    var id = e.contentItem.element[0].childNodes[0].childNodes[0].id;
    setTimeout(function(){InitializeEditor(id)}, 2000);
})
BottomDockerLayout.registerComponent( 'Editor', function( container, state ){
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
            size: '75%',
            collapsible: false
        }]
    });

    MainDockerLayout.init();
    BottomDockerLayout.init();
    var fisrtItem = MainDockerLayout.root.contentItems[0];
    MainDockerLayout.selectItem(fisrtItem);
});

$(window).resize(function() {
    setTimeout(function(){
        MainDockerLayout.updateSize();
        BottomDockerLayout.updateSize();
    }, 200)
})