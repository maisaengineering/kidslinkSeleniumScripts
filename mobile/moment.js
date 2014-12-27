
function moment() {
var momentdetails = "test moment"; 
var imgtapselect = 1;
    
    UIALogger.logStart("adding moment");
    target.delay(4);
    window.buttons()[0].tap();
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
    app.navigationBar().buttons()["Done"].tap();
    
    target.delay(5);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(momentdetails);
    
    target.delay(2);
    //target.logElementTree();
    app.windows()[1].buttons()["Done"].tap();
    
    target.delay(5);
    window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();
    
    var privatepost = function () {
    window.scrollViews()[0].buttons()[3].tap();
    
    }
   
    //hello
    
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    UIALogger.logPass("posted moment");
    
    UIALogger.logStart("capturing moment screenshot");
    target.delay(5);
    app.tabBar().buttons()[0].tap();
    
    target.delay(10);
    target.captureScreenWithName("moment");
    UIALogger.logPass("capturing moment screenshot");

    
}
