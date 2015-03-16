
function total() {
    
    var email = "sravaan18@test.com";
    var password = "123456";
    UIALogger.logStart("Logging in")
    window.textFields()[0].tap();
    window.textFields()[0].setValue(email);
    
    target.delay(1);
    window.secureTextFields()[0].tap();
    //target.tap({x:18, y:342});
    window.secureTextFields()[0].setValue(password);
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    
   


//add moment variables
var momentdetails = "Automation testing"; 
var imgtapselect = 2;           

//Add child
var addkidname = "kid"; 
var date = "21";
var month = "September";
var year = "2007";
var imgtapselect1 = 3;
var skip = 71;

//parent dashboard added milestone
var myrownumber = 5;
// var imgtapselect = 1; 
var milestonename = "Added milestone in parent dashboard..."
//var month = "September";
//var date = "21";
//var year = "2007";
var milestonetext = "This is very beautiful..."
//comment...
    var comment = "added first automate comment";
    
    //Edit post...
    var imgtapselect2 = 2;
    var month1 = "May";
    var date1 = "10";
    var year1 = "2000";
    var details = "Post edited milestone to moment..."
    
    
// Add moment...
UIALogger.logStart("adding moment");
target.delay(4);
window.buttons()[0].tap();
target.delay(2);

window.scrollViews()[0].buttons()[0].tap();
if(selectdevice == "iphone4") {
    app.actionSheet().buttons()[1].tap();
}
else {
    app.actionSheet().collectionViews()[0].cells()[1].tap();
}
target.delay(4);
window.collectionViews()[0].cells()[imgtapselect].tap();

target.delay(5);
app.navigationBar().buttons()["Done"].tap();

target.delay(5);
window.scrollViews()[0].textViews()[0].tap();
window.scrollViews()[0].textViews()[0].setValue(momentdetails);

target.delay(2);
//target.logElementTree();
app.windows()[1].buttons()["Done"].tap();

target.delay(5);
window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();


//hello

target.delay(2);
window.scrollViews()[0].buttons()["post icon"].tap();
UIALogger.logPass("posted moment");

UIALogger.logStart("capturing moment screenshot");
target.delay(5);
app.tabBar().buttons()[0].tap();

target.delay(10);
target.captureScreenWithName("moment");
UIALogger.logPass("capturing moment screenshot");


//click on "No body" in replacement scereen
target.delay(10);
target.frontMostApp().mainWindow().buttons()[6].tap();

target.delay(10);
//Add child....
UIALogger.logStart("adding child");
//go to my family
app.tabBar().buttons()[1].tap();
target.delay(1);    
//clicking manage button
target.delay(2);
app.navigationBar().rightButton().tap();

target.delay(2);
//selecting add child option
if(selectdevice == "iphone4") {
    app.actionSheet().buttons()[0].tap();
}
else {
    app.actionSheet().collectionViews()[0].cells()[0].tap();
}


target.delay(2);
//selectiong pic
window.scrollViews()[0].buttons()[0].tap();
target.delay(1);
if(selectdevice == "iphone4") {
    app.actionSheet().buttons()[1].tap();
}
else {
    app.actionSheet().collectionViews()[0].cells()[1].tap();
}
target.delay(4);
window.collectionViews()[0].cells()[imgtapselect1].tap();
target.delay(6);
app.navigationBar().rightButton().tap();


target.delay(4);   
//entering kid name
window.scrollViews()[0].textFields()[0].tap();
window.scrollViews()[0].textFields()[0].setValue(addkidname);

target.delay(4);
//entering kid bdate
window.scrollViews()[0].buttons()[1].tap();
target.delay(1);
window.pickers()[0].wheels()[0].selectValue(date);
window.pickers()[0].wheels()[1].selectValue(month);
window.pickers()[0].wheels()[2].selectValue(year);
app.toolbar().buttons()["Done"].tap();

target.delay(2);
//submitting kid details
//target.frontMostApp().mainWindow().scrollViews()[0].buttons()["addchild selectedboy"].tap();
window.scrollViews()[0].buttons()[2].tap();


target.delay(2);
target.frontMostApp().mainWindow().scrollViews()[0].buttons()[5].tap();

if(selectdevice == "iphone4") {
    app.actionSheet().buttons()[1].tap();
}
else {
    target.frontMostApp().actionSheet().collectionViews()[0].cells()["Father"].buttons()["Father"].tap();
}
target.delay(2);
window.navigationBar().rightButton().tap();
target.delay(8);

//target.frontMostApp().mainWindow().scrollViews()[0].collectionViews()[0].cells()[5].images()["img_skiptest.png"].tap();
target.frontMostApp().mainWindow().scrollViews()[0].collectionViews()[0].cells()[skip].images()["img_skiptest.png"].tap();
    
target.delay(8);
target.frontMostApp().mainWindow().buttons()[6].tap();

target.delay(8);
app.tabBar().buttons()[1].tap();
UIALogger.logPass("added child");

    target.delay(10);
    app.tabBar().buttons()[0].tap();
    
        
//Delete post
UIALogger.logStart("delete post");
target.frontMostApp().windows()[0].tableViews()[0].cells()[0].buttons()[2].tap();
target.frontMostApp().actionSheet().buttons()["Cancel"].tap();
target.delay(5);

target.frontMostApp().windows()[0].tableViews()[0].cells()[0].buttons()[2].tap();
target.delay(2);
target.frontMostApp().actionSheet().collectionViews()[0].cells()["Delete post"].buttons()["Delete post"].tap();
target.delay(2);
//app.alert().buttons()["Delete"].tap();
//target.frontMostApp().alert().logElementTree();
UIALogger.logPass("delete post");



//Add milestone post in parent dashboard....
target.delay(10);
app.tabBar().buttons()[1].tap();
//selecting user 
target.delay(2);
window.tableViews()[0].cells()[myrownumber].tap();
UIALogger.logStart("adding milestone in parent dashboard....");

target.delay(2);
target.frontMostApp().mainWindow().buttons()[2].tap();
target.delay(2);
window.scrollViews()[0].buttons()[0].tap();
if(selectdevice == "iphone4") {
    app.actionSheet().buttons()[1].tap();
}
else {
    app.actionSheet().collectionViews()[0].cells()[1].tap();
}

target.delay(4);
window.collectionViews()[0].cells()[imgtapselect].tap();

target.delay(5);
app.navigationBar().rightButton().tap();
//target.logElementTree();

target.delay(5);
window.scrollViews()[0].buttons()[1].tap();

target.delay(2);
window.textFields()[0].setValue(milestonename);

target.delay(4);
target.tap({x:197, y:35});
UIALogger.logPass("added milestone");

UIALogger.logStart("adding date");    
target.delay(2);
window.scrollViews()[0].buttons()[2].tap();

target.delay(2);
window.pickers()[0].wheels()[0].selectValue(date);
window.pickers()[0].wheels()[1].selectValue(month);
window.pickers()[0].wheels()[2].selectValue(year);
app.toolbar().buttons()["Done"].tap();
UIALogger.logPass("added date");

UIALogger.logStart("adding milestone details");
target.delay(2);
window.scrollViews()[0].textViews()[0].tap();
window.scrollViews()[0].textViews()[0].setValue(milestonetext);

target.delay(2);
app.windows()[1].buttons()["Done"].tap();

target.delay(5);
window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();

target.delay(2);
window.scrollViews()[0].buttons()["post icon"].tap();
UIALogger.logPass("added milestone");    

UIALogger.logStart("capturing milestone screenshot");
target.delay(10);

target.captureScreenWithName("milestone");

UIALogger.logPass("captured milestone");


//Replacement screen all cases


target.delay(4);
target.frontMostApp().mainWindow().buttons()[4].tap();
target.delay(4);
target.frontMostApp().mainWindow().buttons()[6].tap();
target.delay(4);
target.frontMostApp().mainWindow().buttons()[4].tap();
target.delay(4);
target.frontMostApp().mainWindow().buttons()[4].tap();
target.delay(4);
target.frontMostApp().navigationBar().leftButton().tap();

target.delay(4);
target.frontMostApp().mainWindow().buttons()[5].tap();
target.delay(4);
target.frontMostApp().mainWindow().buttons()[4].tap();
target.delay(4);
target.frontMostApp().navigationBar().leftButton().tap();
target.delay(4);
target.frontMostApp().mainWindow().buttons()[5].tap();
target.delay(4);
target.frontMostApp().mainWindow().buttons()[5].tap();
target.delay(4);
target.frontMostApp().navigationBar().leftButton().tap();

target.delay(4);
target.frontMostApp().mainWindow().buttons()[4].tap();
target.delay(4);
target.frontMostApp().mainWindow().buttons()[5].tap();
target.delay(4);
target.frontMostApp().navigationBar().segmentedControls()[0].buttons()["Email"].tap();
target.delay(4);
target.frontMostApp().navigationBar().rightButton().tap();



//Adding comment.......
       
    //Refresh app...
   
    //target.delay(2);        
    //target.dragInsideWithOptions({startOffset:{x:0.5, y:0.30}, endOffset:{x:0.7, y:0.80},
      //                           duration:0.4});
    
    target.delay(4);
    app.tabBar().buttons()[0].tap();
    
    UIALogger.logStart("adding comment");
    target.delay(4);
    window.tableViews()[0].cells()[0].buttons()[1].tap(); 
    
    target.delay(2);
    window.textViews()[0].setValue(comment);
    
    target.delay(2);
    //window.buttons()[1].tap();       
    app.navigationBar().rightButton().tap();
    
    target.delay(2);
    
    target.captureScreenWithName("comment");
    
    UIALogger.logPass("added comment successfully");
    


//Add hearted
    target.delay(2);
    target.frontMostApp().mainWindow().tableViews()[0].cells()[0].scrollToVisible();
    
    UIALogger.logStart("adding heart");
    target.delay(2);
    window.tableViews()[0].cells()[0].buttons()[0].tap(); 
    
    target.delay(6);
    window.tableViews()[0].cells()[0].buttons()[3].tap(); 
    
    target.delay(6);
    target.captureScreenWithName("hearted list");
    
    target.delay(2);
    window.navigationBar().leftButton().tap();
    
    UIALogger.logPass("hearted");

//Edit post.....
    
    
    UIALogger.logStart("editing my milestone");
    
    window.tableViews()[0].cells()[0].buttons()[2].tap(); 
    target.delay(2);
    
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[0].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[2].tap();
    }
    
    target.delay(4);
    
    window.scrollViews()[0].buttons()[0].tap();
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[1].tap();
    }
    
    target.delay(4);
    window.collectionViews()[0].cells()[imgtapselect2].tap();
    
    target.delay(5);
    app.navigationBar().rightButton().tap();
    //target.logElementTree();
    
    //target.delay(5);
    //window.scrollViews()[0].buttons()[1].tap();
    
   // target.delay(2);
    /*device change*/  //window.textFields()[0].textFields()[0].tap();
    /*device change*/  // //
    //window.textFields()[0].setValue(milestonename);
    
    target.delay(4);
    
    //target.tap({x:197, y:35});
    UIALogger.logPass("edited milestone to moment");
    
    UIALogger.logStart("adding date");    
    target.delay(2);
    window.scrollViews()[0].buttons()[2].tap();
    
    target.delay(4);
    window.pickers()[0].wheels()[0].selectValue(date1);
    window.pickers()[0].wheels()[1].selectValue(month1);
    window.pickers()[0].wheels()[2].selectValue(year1);
    app.toolbar().buttons()["Done"].tap();
    UIALogger.logPass("added date");
    
    UIALogger.logStart("adding moment details");
    target.delay(6);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(details);
    
    target.delay(2);
    app.windows()[1].buttons()["Done"].tap();
    
    target.delay(5);
    window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();
    
    target.delay(5);
    window.scrollViews()[0].scrollViews()[0].buttons()[1].tap();

    
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    UIALogger.logPass("added milestone");    
    
    UIALogger.logStart("capturing milestone screenshot");
    target.delay(10);
    
    target.captureScreenWithName("edited milestone");
    
    UIALogger.logPass("captured milestone");

}