
function addchild_new () {
    var addkidname = "my small kid"; 
    var bdaymonth = "September";
    var bdaydate = "21";
    var bdayyear = "2007";
    var imgtapselect = 3;
    


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
    window.collectionViews()[0].cells()[imgtapselect].tap();
    target.delay(6);
    app.navigationBar().rightButton().tap();


 target.delay(2);   
//entering kid name
window.scrollViews()[0].textFields()[0].textFields()[0].tap();
window.scrollViews()[0].textFields()[0].textFields()[0].setValue(addkidname);


target.delay(4);
 //entering kid bdate
window.scrollViews()[0].buttons()[1].tap();
    target.delay(1);
    window.pickers()[0].wheels()[0].selectValue(bdaymonth);
    window.pickers()[0].wheels()[1].selectValue(bdaydate);
    window.pickers()[0].wheels()[2].selectValue(bdayyear);
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



    
    
/*
target.delay(2);
 //selectiong relationship
window.scrollViews()[0].buttons()["Select Relationship"].tap();
if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
        }
    else {
         app.actionSheet().collectionViews()[0].cells()[1].tap();
        }
 */
    target.delay(2);
window.navigationBar().rightButton().tap();
    target.delay(8);
   // var getcell= window.scrollViews()[0].collectionViews()[0].cells().length;
    //var skiptest= getcell-1;
   
    target.frontMostApp().mainWindow().scrollViews()[0].collectionViews()[0].cells()[5].images()["img_skiptest.png"].tap();

    
    /*
    window.scrollViews()[0].collectionViews()[0].cells()[skiptest].tap();
    
    target.delay(8);
     window.tableViews()[0].tapWithOptions({tapOffset:{x:0.24, y:0.84}});

     */
    target.delay(8);
    target.frontMostApp().mainWindow().buttons()[6].tap();
     UIALogger.logPass("added child");
    
    target.delay(8);
    app.tabBar().buttons()[1].tap();
    
}
