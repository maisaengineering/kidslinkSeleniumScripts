var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();



target.delay(2);
target.frontMostApp().mainWindow().buttons()["blue button new"].tap();
target.delay(2);

window.textFields()[0].tap();
window.textFields()[0].setValue("ios15@test.com");

target.delay(1);
target.frontMostApp().mainWindow().secureTextFields()[0].tap();
//target.tap({x:18, y:342});
window.secureTextFields()[0].setValue("123456");
target.delay(1);
window.buttons()[0].tap();


target.delay(1);

target.frontMostApp().tabBar().buttons()[2].tap();
target.delay(5);

target.frontMostApp().windows()[0].buttons()["add document"].tap();

target.frontMostApp().actionSheet().collectionViews()[0].cells()[1].tap();

target.delay(1);
target.tap({x:200.50, y:175.00});

target.delay(5);
target.tap({x:280, y:34});

//target.logElementTree();
target.delay(5);


window.buttons()[0].tap();
target.frontMostApp().mainWindow().tableViews()[0].cells()[0].tap();

target.delay(5);
target.frontMostApp().mainWindow().tableViews()[0].cells()[3].tap();

target.delay(5);
target.frontMostApp().mainWindow().tableViews()[0].cells()[2].tap();




 target.delay(5);
window.scrollViews()[0].textFields()[0].textFields()[0].tap();


target.delay(1);
window.scrollViews()[0].textFields()[0].textFields()[0].setValue("my driving license");

target.delay(2);

 
target.logElementTree();

window.scrollViews()[0].textViews()[0].tap();
target.delay(5);

window.scrollViews()[0].textViews()[0].setValue("it is my original driving license");

//target.frontMostApp().toolbar().buttons()["Done"].tap();

/*

target.delay(5);


target.frontMostApp().mainWindow().scrollViews()[0].buttons()[0].tap();

target.delay(1);

target.frontMostApp().mainWindow().pickers()[0].wheels()[0].selectValue("October");
target.frontMostApp().mainWindow().pickers()[0].wheels()[1].selectValue("12");
target.frontMostApp().mainWindow().pickers()[0].wheels()[2].selectValue("2013");


target.frontMostApp().toolbar().buttons()["Done"].tap();

target.delay(1);


target.frontMostApp().mainWindow().scrollViews()[0].buttons()[1].tap();

target.delay(1);

target.frontMostApp().mainWindow().pickers()[0].wheels()[0].selectValue("December");
target.frontMostApp().mainWindow().pickers()[0].wheels()[1].selectValue("12");
target.frontMostApp().mainWindow().pickers()[0].wheels()[2].selectValue("2014");

target.frontMostApp().toolbar().buttons()["Done"].tap();
target.delay(1);

*/


window.navigationBar().buttons()["Save"].tap();

target.delay(10);

 target.frontMostApp().tabBar().buttons()[4].tap();
 target.frontMostApp().mainWindow().tableViews()[0].tapWithOptions({tapOffset:{x:0.20, y:0.79}});

