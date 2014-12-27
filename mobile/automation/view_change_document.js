function view_change_doc() {

UIALogger.logStart("view and change document list");
//clicking vault tab;
app.tabBar().buttons()[2].tap();

//clicking document menu;
target.delay(5);
window.tableViews()[0].cells()[2].tap();

//clicking document sub list;
target.delay(5);
window.tableViews()[0].cells()[1].tap();

//selecting users list;
target.delay(5);
window.tableViews()[0].cells()[0].tap();

//clicking on options
target.delay(10);
target.tap({x:15, y:533});

// selecting change document type
    
target.delay(2);
app.actionSheet().collectionViews()[0].cells()[0].tap();

// selecting change document menu
target.delay(5);
window.tableViews()[0].cells()[2].tap();

// selecting change document sub menu
target.delay(5);
window.tableViews()[0].cells()[1].tap();

// changing document
target.delay(10);
target.tap({x:296.50, y:28.50});
UIALogger.logPass("changed document list");
    
    UIALogger.logStart("capturing document list");
    //capturing list; 
    target.delay(5);
    target.captureScreenWithName("see document changed list");
    
    target.delay(2);   
    app.tabBar().buttons()[0].tap();
    UIALogger.logPass("captured screenshot and went to home page");
}
