function registration_login() {
var email = "ssadashiv@maisasolutions.com";
var phonenumber = "9999999911";
var invitename = "MAISA";
var firstname = "sadashiv";
var lastname = "bachuwar";
var zipcode = "504103";
var password = "mpride";
 
//clicking on registration code
UIALogger.logStart("submitting invitatino code")
target.delay(10);
window.buttons()[1].tap();
 
//selecting invitation  code field
target.delay(6);
window.scrollViews()[0].webViews()[0].textFields()[0].tap();


target.delay(5);
app.keyboard().typeString(invitename);

//submit invitation code
window.scrollViews()[0].webViews()[0].buttons()["Submit"].tap();
target.delay(8);
UIALogger.logPass("submitted invitation code")
    
    
UIALogger.logStart("entering user details fileds");
//entering user fields
window.scrollViews()[0].webViews()[0].textFields()[0].tap();

target.delay(4);
app.keyboard().typeString(firstname);

target.delay(4);
window.scrollViews()[0].webViews()[0].textFields()[1].tap();

target.delay(4);
app.keyboard().typeString(lastname);

window.scrollViews()[0].webViews()[0].textFields()[2].tap();

target.delay(4);
app.keyboard().typeString(email);

target.delay(4);
window.scrollViews()[0].webViews()[0].textFields()[3].tap();

target.delay(6);

app.keyboard().typeString(zipcode);

window.scrollViews()[0].webViews()[0].textFields()[4].tap();


target.delay(6);
app.keyboard().typeString(phonenumber);

target.delay(4);
//target.tap({x:18, y:85});
window.scrollViews()[0].webViews()[0].textFields()[5].tap();

target.delay(4);
app.keyboard().typeString(phonenumber);

target.delay(4);
//target.tap({x:18, y:85});
window.scrollViews()[0].webViews()[0].secureTextFields()[0].tap();

target.delay(4);
app.keyboard().typeString(password);

target.delay(4);
//target.tap({x:18, y:265})
window.scrollViews()[0].webViews()[0].secureTextFields()[1].tap();

target.delay(4);
app.keyboard().typeString(password);

target.delay(4);
window.scrollViews()[0].webViews()[0].switches()[0].tap();
window.scrollViews()[0].webViews()[0].switches()[0].setValue[1];

target.delay(4);
window.scrollViews()[0].webViews()[0].buttons()[0].tap();
UIALogger.logPass("user details submitted successfully");

target.delay(6);
UIALogger.logStart("captured successfull register");

target.captureScreenWithName("successfull register");

UIALogger.logPass("captured successfull register");
window.scrollViews()[0].webViews()[0].links()[0].tap();

target.delay(5);

window.textFields()[0].tap();
window.textFields()[0].setValue(email);

target.delay(1);
//target.tap({x:18, y:342});
app.mainWindow().secureTextFields()[0].tap();
app.mainWindow().secureTextFields()[0].setValue(password);

target.delay(4);
window.buttons()[0].tap();
}
