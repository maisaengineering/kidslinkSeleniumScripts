function saysomething() {
var saysometing = "hey it's saysomething test case";
    
target.delay(1);
window.buttons()[1].tap();
    
target.delay(2);
window.scrollViews()[0].textViews()[0].tap();
window.scrollViews()[0].textViews()[0].setValue(saysometing);

target.delay(1);
app.windows()[0].scrollViews()[0].buttons()[0].tap();
    target.delay(10);
target.captureScreenWithName("say something");
    
}