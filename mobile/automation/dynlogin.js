function dynlogin() {
    var email = email_login[i];
    var password = "123456";
    
    UIALogger.logStart("tapping login fields");
    window.textFields()[0].tap();
    window.textFields()[0].setValue(email);

    
    target.delay(1);

    target.frontMostApp().mainWindow().secureTextFields()[0].tap();
    window.secureTextFields()[0].setValue(password);

    
    target.delay(1);
    window.buttons()[0].tap();
     
    
    target.delay(8);
    UIALogger.logPass(email_login[i] + "User Logged in");
    
    
    app.tabBar().buttons()[1].tap();
    
   
    
    target.delay(5);
    
      UIALogger.logStart("capturing screenshot");
    target.captureScreenWithName(email_login[i] + "user");
      UIALogger.logPass("captured screenshot");
 }
