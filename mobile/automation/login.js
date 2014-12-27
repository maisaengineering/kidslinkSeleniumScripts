function login() {
    var email = "ios15@test.com";
    var password = "111111";
    window.textFields()[0].tap();
    window.textFields()[0].setValue(email);
    
    target.delay(1);
    target.frontMostApp().mainWindow().secureTextFields()[0].tap();
    //target.tap({x:18, y:342});
    window.secureTextFields()[0].setValue(password);
    target.delay(1);
    window.buttons()[0].tap();
 }
