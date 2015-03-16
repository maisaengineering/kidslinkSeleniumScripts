
function dynregistration_login() {
var email = email_regsiter[j];
var phonenumber = phonenumber_register[j];
var invitename = "MAISA";
var firstname = "test";
var lastname = "auto";
var zipcode = "504103";
var password = "123456";
 
//clicking on registration code


    
target.delay(5);
window.scrollViews()[0].textFields()[0].tap();
window.scrollViews()[0].textFields()[0].setValue(email);
    
target.delay(5);
window.scrollViews()[0].buttons()[0].tap();
    
target.delay(5);
window.buttons()[0].tap();
    
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
//entering firsname
target.delay(4);
app.keyboard().typeString(firstname);


target.delay(4);
window.scrollViews()[0].webViews()[0].textFields()[1].tap();

//entering lastname
target.delay(4);
app.keyboard().typeString(lastname);

    target.frontMostApp().windows()[1].toolbar().buttons()["Done"].tap();
    
//window.scrollViews()[0].webViews()[0].textFields()[2].tap();

//target.delay(4);
//app.keyboard().typeString(email);


    
window.scrollViews()[0].webViews()[0].elements()[11].tap();
target.delay(5);
target.frontMostApp().windows()[1].pickers()[0].wheels()[0].tap();
target.frontMostApp().windows()[1].toolbar().buttons()["Done"].tap();
    
    
target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].textFields()[3].tap();    
//entering zipcode     
target.delay(6);
app.keyboard().typeString(zipcode);

//entering phonenumber 
window.scrollViews()[0].webViews()[0].textFields()[5].tap();
target.delay(6);
app.keyboard().typeString(phonenumber);

//entering phonenumber 2 
target.delay(4);
//target.tap({x:18, y:85});
window.scrollViews()[0].webViews()[0].textFields()[7].tap();
target.delay(4);
app.keyboard().typeString(phonenumber);

//creating password
target.delay(4);
//target.tap({x:18, y:85});
window.scrollViews()[0].webViews()[0].secureTextFields()[0].tap();

target.delay(4);
app.keyboard().typeString(password);

//creating confirm password
target.delay(4);
//target.tap({x:18, y:265})
window.scrollViews()[0].webViews()[0].secureTextFields()[1].tap();
target.delay(4);
app.keyboard().typeString(password);

//creating confirm password
target.delay(4);
window.scrollViews()[0].webViews()[0].switches()[0].tap();
window.scrollViews()[0].webViews()[0].switches()[0].setValue[1];

//submitting page
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
    //target.delay(2);
    //window.buttons()[0].tap();
    //target.delay(2);
    //window.buttons()[2].tap();

    app.tabBar().buttons()[1].tap();
    
    //selecting user 
    target.delay(2);
    window.tableViews()[0].cells()[1].tap();
    
    //selecting profile details 
    target.delay(2);    
    window.buttons()[0].tap();
    UIALogger.logPass("logged in new user");
    
    UIALogger.logStart("capturing new user profile");
    //some test code
    UIALogger.logMessage("Starting Module 001 branch 2, validating input.");
    //capture a screenshot with a specified name
    target.captureScreenWithName("its " + email_regsiter[j] + "user screen");
    
    target.delay(2); 
    window.buttons()["btnKidProfileClose"].tap();
    target.delay(2); 
    app.tabBar().buttons()[0].tap();
    UIALogger.logStart("captured sceenshot and went to homepage");
     
}

