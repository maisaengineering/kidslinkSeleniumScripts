var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();


window.buttons()[0].tap();

target.delay(2);


UIATarget.onAlert = function onAlert(alert) {
    UIALogger.logMessage("alertShown");
    return false;
}