
function sharepostfb() {

UIALogger.logStart("sharing post to fb");
//target.delay(1);
//app.tabBar().buttons()[1].tap();

//target.delay(1);
//window.tableViews()[0].cells()[4].tap();

target.logElementTree();
    
target.delay(2);
window.tableViews()[0].cells()[0].buttons()[2].tap();

if(selectdevice == "iphone4") {
	 app.actionSheet().buttons()[0].tap();
	 }
 else {
	 app.actionSheet().collectionViews()[0].cells()[0].tap();
	 }

target.delay(2);    
app.tabBar().buttons()[0].tap(); 

UIALogger.logPass("successfully shared fb");
    target.delay(10);
    UIATarget.onAlert = function onAlert(alert) {
        var title = alert.name();
        UIALogger.logMessage("Alert with title '" + title + "' encountered.");
        // return false to use the default handler
        return false;
    }
}