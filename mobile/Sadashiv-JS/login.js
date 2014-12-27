var target = UIATarget.localTarget();
                                     
var app = target.frontMostApp();
var window = app.mainWindow();



target.delay(1);

target.frontMostApp().mainWindow().buttons()["blue button new"].tap();


target.delay(1);

window.textFields()[0].tap();
window.textFields()[0].setValue("test998@test.com");


target.delay(1);

//target.frontMostApp().mainWindow().securetextFields()[0].tap();
target.tap({x:18, y:342});

window.secureTextFields()[0].setValue("123456");

target.delay(1);

window.buttons()[0].tap();

target.delay(1);


target.frontMostApp().tabBar().buttons()[4].tap();
target.frontMostApp().mainWindow().tableViews()[0].tapWithOptions({tapOffset:{x:0.20, y:0.79}});


