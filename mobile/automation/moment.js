
function moment() {
var momentdetails = "test2"; 
var imgtapselect = 2;
    
    UIALogger.logStart("adding moment");
    window.buttons()[0].tap();
    target.delay(2);
    
    window.scrollViews()[0].buttons()[0].tap();
    app.actionSheet().collectionViews()[0].cells()[1].tap();
    
     target.delay(4);
    window.collectionViews()[0].cells()[imgtapselect].tap();
        
   
    target.delay(5);
    app.navigationBar().rightButton().tap();
    

    target.delay(5);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(momentdetails);
    
    target.delay(2);
   
    target.tap({x:250, y:275});
    
    target.delay(5);
    window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();
    
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    UIALogger.logPass("posted moment");
    
    
    UIALogger.logStart("capturing moment screenshot");
    target.delay(5);
    app.tabBar().buttons()[0].tap();
    
    target.delay(10);
    target.captureScreenWithName("moment");
    

}
