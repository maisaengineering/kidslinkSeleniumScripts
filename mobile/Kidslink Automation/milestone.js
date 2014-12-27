
var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();
//click on blue button
target.delay(1);
target.frontMostApp().mainWindow().buttons()["blue button new"].tap();

target.delay(1);
window.textFields()[0].tap();
window.textFields()[0].setValue("a1@test.com");


target.delay(1);
target.frontMostApp().mainWindow().secureTextFields()[0].tap();
//target.tap({x:18, y:342});
window.secureTextFields()[0].setValue("123456");


target.delay(1);
window.buttons()[0].tap();

target.delay(1);

target.frontMostApp().mainWindow().buttons()["tab addmoment"].tap();
target.frontMostApp().mainWindow().scrollViews()[0].buttons()["addphoto icon"].tap();
target.frontMostApp().actionSheet().collectionViews()[0].cells()[1].tap();

target.delay(1);
target.tap({x:200.50, y:175.00});

target.delay(5);
target.tap({x:280, y:34});
//target.logElementTree():

target.delay(1);

target.frontMostApp().mainWindow().scrollViews()[0].buttons()["milestonetitletext icon"].tap();


target.delay(1);
target.frontMostApp().mainWindow().textFields()[0].textFields()[0].tap();
window.textFields()[0].setValue("ios22@test.com");

target.frontMostApp().mainWindow().buttons()["accept icon"].tap();

window.scrollViews()[0].textViews()[0].tap();
window.scrollViews()[0].textViews()[0].setValue('Sravan');
window.scrollViews()[0].buttons()["post icon"].tap();


target.delay(1);
 target.frontMostApp().tabBar().buttons()[4].tap();
 target.frontMostApp().mainWindow().tableViews()[0].tapWithOptions({tapOffset:{x:0.20, y:0.79}});








