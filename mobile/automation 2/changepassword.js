
function changepassword() {

var currentpassword = "111111"
var newpassword = "123456"
var cnewpassword = newpassword;
var email = "ios15@test.com"

UIALogger.logStart("Changing Password")
app.tabBar().buttons()[4].tap();
target.delay(4);
window.tableViews()[0].cells()[1].tap();

//entering current password
target.delay(2);
window.scrollViews()[0].secureTextFields()[0].tap();
window.scrollViews()[0].secureTextFields()[0].setValue(currentpassword);

//entering new password
target.delay(2);
window.scrollViews()[0].secureTextFields()[1].tap();
window.scrollViews()[0].secureTextFields()[1].setValue(newpassword);

//entering confirm new password
target.delay(2);
window.scrollViews()[0].secureTextFields()[2].tap();
window.scrollViews()[0].secureTextFields()[2].setValue(cnewpassword);

//tapping submit
target.delay(2);
window.scrollViews()[0].buttons()[0].tap();

//go to homepage
target.delay(4);
app.tabBar().buttons()[0].tap();
UIALogger.logPass("Successfully changed password " + "now your new password is " + newpassword)
 target.delay(2)
    logout();

    
//login with new password
    UIALogger.logStart("a with new password")
    window.textFields()[0].tap();
    window.textFields()[0].setValue(email);
    
    target.delay(1);
    target.frontMostApp().mainWindow().secureTextFields()[0].tap();
    //target.tap({x:18, y:342});
    window.secureTextFields()[0].setValue(newpassword);
    target.delay(1);
    window.buttons()[0].tap();
    UIALogger.logPass("Logged in successfully");
    
}