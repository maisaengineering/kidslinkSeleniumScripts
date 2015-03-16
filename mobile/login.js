function login() {
    var email = "ios15@test.com";
    var password = "123456";
    UIALogger.logStart("Logging in")
    window.textFields()[0].tap();
    window.textFields()[0].setValue(email);
    
    target.delay(1);
    window.secureTextFields()[0].tap();
    //target.tap({x:18, y:342});
    window.secureTextFields()[0].setValue(password);
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    
    UIATarget.onAlert = function onAlert(alert) {
    
        return false;
    }
        //UIALogger.logMessage("Alert with title '" + title + "' encountered.");
        // return false to use the default handler
    target.delay(8);
    target.captureScreenWithName("home wall");
    target.delay(2);
    UIALogger.logPass("Logged in Successfully");
 }
