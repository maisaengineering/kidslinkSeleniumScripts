
function dynregistration_login() {

var email = email_regsiter[j];
var phonenumber = phonenumber_register[j];
var invitename = "MAISA";
var firstname = "sadashiv";
var lastname = "bachuwar";
var zipcode = "504103";
var password = "mpride";
 
//clicking on registration code

target.delay(10);
window.buttons()[1].tap();
 UIALogger.logStart("submitting invitatino code")
//selecting invitation  code field
target.delay(6);
window.scrollViews()[0].webViews()[0].textFields()[0].tap();


target.delay(5);
app.keyboard().typeString(invitename);

    target.delay(5);
//submit invitation code
window.scrollViews()[0].webViews()[0].buttons()["Submit"].tap();
target.delay(12);
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
UIALogger.logPass(email_regsiter[j] + " user registered successfully");

target.delay(6);
UIALogger.logStart("captured successfull register");

target.captureScreenWithName("successfull register");

UIALogger.logPass("captured successfull register");
window.scrollViews()[0].webViews()[0].links()[0].tap();

target.delay(5);

UIALogger.logStart("logging new user");
window.textFields()[0].tap();
window.textFields()[0].setValue(email);

target.delay(1);
//target.tap({x:18, y:342});
app.mainWindow().secureTextFields()[0].tap();
app.mainWindow().secureTextFields()[0].setValue(password);

target.delay(4);
window.buttons()[0].tap();
target.delay(4);
UIALogger.logPass("logged in new user");
    
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[2].tap();

    app.tabBar().buttons()[1].tap();
    
    //selecting user 
    target.delay(2);
    window.tableViews()[0].cells()[1].tap();
    
    //selecting profile details 
    target.delay(2);    
    window.buttons()[0].tap();
    
    UIALogger.logStart("capturing new user profile");
    //some test code
    UIALogger.logMessage("Starting Module 001 branch 2, validating input.");
    //capture a screenshot with a specified name
    target.captureScreenWithName("its " + email_regsiter[j] + "user screen");
    
    target.delay(2); 
    target.tap({x:275.50, y:49.50});
    target.delay(2); 

}
