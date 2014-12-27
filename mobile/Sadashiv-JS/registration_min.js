var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();


target.delay(2);

target.frontMostApp().mainWindow().buttons()["blue button new"].tap();
target.frontMostApp().mainWindow().buttons()["Login Invitation"].tap();
/*target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].logElementTree()*/

target.delay(1);

window.scrollViews()[0].webViews()[0].textFields()[0].tap();

target.delay(2);
app.keyboard().typeString("MAISA");

window.scrollViews()[0].webViews()[0].buttons()["Submit"].tap();
target.delay(1);


window.scrollViews()[0].webViews()[0].textFields()[0].tap();


target.delay(1);
app.keyboard().typeString("sadashiv");

target.delay(1);

window.scrollViews()[0].webViews()[0].textFields()[1].tap();

target.delay(1);
app.keyboard().typeString("bachuwar");

window.scrollViews()[0].webViews()[0].textFields()[2].tap();

target.delay(1);
app.keyboard().typeString("ssadashiv@maisasolutions.com");



target.delay(1);

window.scrollViews()[0].webViews()[0].textFields()[3].tap();



target.delay(1);
var getnumber="504103";
target.frontMostApp().keyboard().typeString(getnumber);

window.scrollViews()[0].webViews()[0].textFields()[4].tap();

var getnumber="9999900000";

target.delay(1);
app.keyboard().typeString(getnumber);

target.delay(2);
target.tap({x:18, y:85});
//target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].securetextFields()[0].tap();

target.delay(1);
app.keyboard().typeString("mpride");

target.delay(1);

target.tap({x:18, y:265})
//target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].securetextFields()[1].tap();

target.delay(1);
app.keyboard().typeString("mpride");

window.scrollViews()[0].webViews()[0].switches()[0].tap();


window.scrollViews()[0].webViews()[0].switches()[0].setValue[1];


target.delay(1);
window.scrollViews()[0].webViews()[0].buttons()[0].tap();




target.delay(1);
window.scrollViews()[0].webViews()[0].links()[0].tap();

target.delay(2);



window.textFields()[0].tap();
window.textFields()[0].setValue("ssadashiv@maisasolutions.com");

target.delay(1);
target.tap({x:18, y:342});
target.frontMostApp().mainWindow().securetextFields()[0].setValue("mpride");

target.delay(1);

target.frontMostApp().mainWindow().buttons()["Login"].tap();




/*target.delay(2);
window.scrollViews()[0].webViews()[0].buttons()["Sign in now"].tap();*/




















		