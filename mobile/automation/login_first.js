function login_first() { 
    var email = "ios15@test.com";
    var password = "123456"; 
    
target.delay(5);
window.buttons()[0].tap();

target.delay(2);
window.textFields()[0].tap();
window.textFields()[0].setValue(email);

target.delay(2);
target.frontMostApp().mainWindow().secureTextFields()[0].tap();
//target.tap({x:18, y:342});
window.secureTextFields()[0].setValue(password);
target.delay(2);
window.buttons()[0].tap();

target.delay(2);
    UIATarget.onAlert = function onAlert(alert) {
        var title = alert.name();
        UIALogger.logWarning("Alert with title '" + title + "' encountered.");
        // return false to use the default handler
        return false;
    }

}