
function view_change_doc() {

UIALogger.logStart("view and change document list");
//clicking vault tab;
app.tabBar().buttons()[2].tap();

//clicking document menu;
target.delay(5);
window.tableViews()[0].cells()[2].tap();

//clicking document sub list;
target.delay(5);
window.tableViews()[0].cells()[0].tap();

//selecting users list;
target.delay(5);
window.tableViews()[0].cells()[1].tap();

//target.delay(5);
//window.tableViews()[0].cells()[0].tap();
    
    
    //clicking on options
    target.delay(10);
    target.logElementTree();
    app.windows()[0].buttons()["btnProfileOptions"].tap();
    
    // selecting change document type
    
    target.delay(2);
    if(selectdevice == "iphone4") { 
    app.actionSheet().buttons()[0].tap();
    }
    else {
    app.actionSheet().collectionViews()[0].cells()[0].tap();
    }
  
    // selecting change document main menu
    target.delay(5);
    window.tableViews()[0].cells()[1].tap();
    
    // selecting change document sub menu
    target.delay(5);
    window.tableViews()[0].cells()[0].tap();
    
    
    // closing document
    target.delay(10);
    
    window.buttons()[2].tap();
    
    
    UIALogger.logPass("changed document list");
    
    UIALogger.logStart("capturing document list");
    //capturing list; 
    target.delay(5);
    target.captureScreenWithName("see document changed list");
    
    target.delay(2);   
    app.tabBar().buttons()[0].tap();
    UIALogger.logPass("captured screenshot and went to home page");
    

    
    
}
