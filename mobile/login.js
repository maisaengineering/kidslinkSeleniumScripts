function login() {
    var email = "ios15@test.com";
    var password = "111111";
    UIALogger.logStart("Logging in")
    window.textFields()[0].tap();
    window.textFields()[0].setValue(email);
    
    target.delay(1);
    window.secureTextFields()[0].tap();
    //target.tap({x:18, y:342});
    window.secureTextFields()[0].setValue(password);
    target.delay(2);
    window.buttons()[0].tap();
    
    target.delay(5);
    target.captureScreenWithName("moment");
    target.delay(2);
    UIALogger.logPass("Logged in Successfully");
 }
