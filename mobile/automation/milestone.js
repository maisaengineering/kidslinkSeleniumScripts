
function milestone() {
var milestonename = "test1";
var year = "2012";
var month = "October";
var date = "21";
var imgtapselect = 1;
    
UIALogger.logStart("add milestone");
window.buttons()[0].tap();
target.delay(2);

window.scrollViews()[0].buttons()[0].tap();
app.actionSheet().collectionViews()[0].cells()[1].tap();

target.delay(4);
window.collectionViews()[0].cells()[imgtapselect].tap();

target.delay(5);
app.navigationBar().rightButton().tap();
//target.logElementTree();

target.delay(2);
window.scrollViews()[0].buttons()[1].tap();

target.delay(2);
window.textFields()[0].textFields()[0].tap();
window.textFields()[0].setValue(milestonename);

target.delay(2);
window.buttons()["accept icon"].tap();
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
window.scrollViews()[0].textViews()[0].setValue('Sravan');

target.delay(2);
target.tap({x:250, y:275});

target.delay(5);
window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();
    
target.delay(2);
window.scrollViews()[0].buttons()["post icon"].tap();
UIALogger.logPass("added milestone");    

    UIALogger.logStart("capturing milestone screenshot");
    target.delay(5);
    app.tabBar().buttons()[0].tap();
    
    target.delay(2);
    target.captureScreenWithName("milestone");
    
    UIALogger.logPass("captured milestone");

}
