var target = UIATarget.localTarget();


target.frontMostApp().mainWindow().buttons()["Register"].tap();

/*target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].logElementTree()*/



target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].textFields()[0].tap();

target.delay(1);
target.frontMostApp().keyboard().typeString("MAISA");
target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].buttons()["Submit"].tap();



target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].textFields()[1].tap();


target.delay(1);
target.frontMostApp().keyboard().typeString("bachuwar");

target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].textFields()[2].tap();

target.delay(1);
target.frontMostApp().keyboard().typeString("ssadashiv@maisasolutions.com");



target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].textFields()[0].tap();


target.delay(1);
target.frontMostApp().keyboard().typeString("sadashiv");


target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].textFields()[3].tap();

var getnumber="504103";

target.delay(1);
target.frontMostApp().keyboard().typeString(getnumber);

target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].textFields()[4].tap();

var getnumber="9999900000";

target.delay(1);
target.frontMostApp().keyboard().typeString(getnumber);

target.tap({x:18, y:342});

target.delay(1);
target.frontMostApp().keyboard().typeString("mpride");

target.tap({x:18, y:265});

target.delay(1);
target.frontMostApp().keyboard().typeString("mpride");

target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].switches()[0].tap();


target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].switches()[0].setValue[1];


target.delay(1);
target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].buttons()[0].tap();


target.delay(1);
target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].links()[0].tap();




/*
target.delay(2);
target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].buttons()["Sign in now"].tap();
*


/*target.frontMostApp().mainWindow().scrollViews()[0].webViews()[0].buttons()[0].tap();*/

















		