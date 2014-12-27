function saysomething() {
var saysometing = "test1";
    
UIALogger.logStart("posting say something");
target.delay(6);
window.buttons()[1].tap(); 
target.delay(2);
window.scrollViews()[0].textViews()[0].tap();
window.scrollViews()[0].textViews()[0].setValue(saysometing);

target.delay(2);
//target.logElementTree();
app.windows()[1].buttons()["Done"].tap();
    
target.delay(2);
app.windows()[0].scrollViews()[0].buttons()[0].tap();

target.delay(10);
target.captureScreenWithName("say something");
UIALogger.logPass("posted say something");
}