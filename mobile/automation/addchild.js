function addchild () {
    var addkidname = "my small kid"; 
    var bdaymonth = "September";
    var bdaydate = "21";
    var bdayyear = "2007";
    var uploadchildimg = {x:200.50, y:175.00};
    
    UIALogger.logStart("adding child");
    //go to my family
    app.tabBar().buttons()[1].tap();
    
    //clicking manage button
    target.delay(1);
    app.navigationBar().rightButton().tap();
    
    //clicking on add child option
    app.actionSheet().collectionViews()[0].cells()[0].tap();
 
    //filling kid info
    target.delay(5);
    window.scrollViews()[0].textFields()[0].textFields()[0].tap();
    
    window.scrollViews()[0].textFields()[0].textFields()[0].setValue(addkidname);
    
    window.scrollViews()[0].buttons()["Date"].tap();
    
    target.delay(1);
    window.pickers()[0].wheels()[0].selectValue(bdaymonth);
    window.pickers()[0].wheels()[1].selectValue(bdaydate);
    window.pickers()[0].wheels()[2].selectValue(bdayyear);
    app.toolbar().buttons()["Done"].tap();
    
    window.scrollViews()[0].buttons()[3].tap();
    
    target.delay(1);
    window.scrollViews()[0].staticTexts()["Who can manage this child?"].scrollToVisible();
    
    target.delay(1);
    app.windows()[0].scrollViews()[0].buttons()["add kid photo select"].tap();
    
    target.delay(1);
    app.actionSheet().collectionViews()[0].cells()[1].tap();
    
    target.delay(4);
    target.tap(uploadchildimg);
    
    target.delay(6);
    app.navigationBar().rightButton().tap();
    
    target.delay(2);
    window.scrollViews()[0].buttons()[13].scrollToVisible();
    
    target.delay(2);
    target.frontMostApp().windows()[0].scrollViews()[0].buttons()[9].tap();
    
    target.delay(2);
    app.actionSheet().collectionViews()[0].cells()[2].tap();
    
    
    target.delay(2);
    app.navigationBar().rightButton().tap();
    target.delay(5)
    
    UIALogger.logPass("added child");

    UIALogger.logStart("capturing added child");
    target.captureScreenWithName("check added child name");
    UIALogger.logPass("captured screenshot");

    
}