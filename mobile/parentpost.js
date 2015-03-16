
function parentpost() {
    
    var myrownumber = 1;
    var imgtapselect = 1; 
    var milestonename = "Added milestone in parent dashboard..."
    var month = "September";
    var date = "21";
    var year = "2007";
    var milestonetext = "This is very beautiful..."
    
    app.tabBar().buttons()[1].tap();
    
    //selecting user 
    target.delay(2);
    window.tableViews()[0].cells()[myrownumber].tap();
   
    
    UIALogger.logStart("adding milestone in parent dashboard....");
    
    target.delay(2);
    target.frontMostApp().mainWindow().buttons()[2].tap();
    target.delay(2);
    window.scrollViews()[0].buttons()[0].tap();
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[1].tap();
    }
    
    
    target.delay(4);
    window.collectionViews()[0].cells()[imgtapselect].tap();
    
    target.delay(5);
    app.navigationBar().rightButton().tap();
    //target.logElementTree();
    
    target.delay(5);
    window.scrollViews()[0].buttons()[1].tap();
    
    target.delay(2);
    /*device change*/  //window.textFields()[0].textFields()[0].tap();
    /*device change*/  // //
    window.textFields()[0].setValue(milestonename);
    
    target.delay(4);
    
    target.tap({x:197, y:35});
    UIALogger.logPass("added milestone");
    
    UIALogger.logStart("adding date");    
    target.delay(2);
    window.scrollViews()[0].buttons()[2].tap();
    
    target.delay(2);
    window.pickers()[0].wheels()[0].selectValue(month);
    window.pickers()[0].wheels()[1].selectValue(date);
    window.pickers()[0].wheels()[2].selectValue(year);
    app.toolbar().buttons()["Done"].tap();
    UIALogger.logPass("added date");
    
    UIALogger.logStart("adding milestone details");
    target.delay(2);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(milestonetext);
    
    target.delay(2);
    app.windows()[1].buttons()["Done"].tap();
    
    target.delay(5);
    window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();
    
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    UIALogger.logPass("added milestone");    
    
    UIALogger.logStart("capturing milestone screenshot");
    target.delay(10);
    
    target.captureScreenWithName("milestone");
    
    UIALogger.logPass("captured milestone");
    
    //Replacement screen all cases
    
    
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[6].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().leftButton().tap();
    
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[5].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().leftButton().tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[5].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[5].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().leftButton().tap();
    
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[5].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().segmentedControls()[0].buttons()["Email"].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().rightButton().tap();

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
