function addchild () {
    var addkidname = "my small kid"; 
    var bdaymonth = "September";
    var bdaydate = "21";
    var bdayyear = "2007";
    var imgtapselect = 3;
    
    UIALogger.logStart("adding child");
    //go to my family
    app.tabBar().buttons()[1].tap();
    
    //clicking manage button
    target.delay(1);
    app.navigationBar().rightButton().tap();
    
    //clicking on add child option
	if(selectdevice == "iphone4") {
		 app.actionSheet().buttons()[0].tap();
		}
	 else {
		 app.actionSheet().collectionViews()[0].cells()[0].tap();
		 }

    //filling kid info
    target.delay(5);
    //target.logElementTree();
    //window.scrollViews()[0].textFields()[0].textFields()[0].tap();
    window.scrollViews()[0].textFields()[0].tap();
    
    //window.scrollViews()[0].textFields()[0].textFields()[0].setValue(addkidname);
    window.scrollViews()[0].textFields()[0].setValue(addkidname);
    
    target.delay(2);
    
    app.windows()[0].scrollViews()[0].buttons()["add kid photo select"].tap();
    
    target.delay(1);
	if(selectdevice == "iphone4") {
		app.actionSheet().buttons()[1].tap();
		
		}
     
	else {
		 app.actionSheet().collectionViews()[0].cells()[1].tap();
		}
    
    
    
    target.delay(4);
    window.collectionViews()[0].cells()[imgtapselect].tap();
    
    target.delay(6);
    app.navigationBar().rightButton().tap();
    
    
    window.scrollViews()[0].buttons()[1].tap();
    
    target.delay(1);
    window.pickers()[0].wheels()[0].selectValue(bdaymonth);
    window.pickers()[0].wheels()[1].selectValue(bdaydate);
    window.pickers()[0].wheels()[2].selectValue(bdayyear);
    app.toolbar().buttons()["Done"].tap();
    
    
    target.delay(1);
    
    window.scrollViews()[0].buttons()[4].tap();
    
    window.scrollViews()[0].buttons()["Relationship"].tap();
     app.actionSheet().collectionViews()[0].cells()[1].tap();
    
    
    //target.delay(2);
    app.navigationBar().rightButton().tap();
    target.delay(5);
    
    //target.logElementTree();
    
    
    window.scrollViews()[0].collectionViews()[0].cells()[5].tap();
    
    //with moment
    
    /*
    window.scrollViews()[0].collectionViews()[0].cells()[2].tap();

    target.delay(5);
    app.navigationBar().buttons()["Done"].tap();
    
    target.delay(5);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue("child moment");
    
    target.delay(2);

    app.windows()[1].buttons()["Done"].tap();
    
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    
    target.delay(12);
    */
  
    target.delay(5);
    UIALogger.logPass("added child");

    UIALogger.logStart("capturing added child");
    target.captureScreenWithName("check added child name");
    UIALogger.logPass("captured screenshot");

    
}