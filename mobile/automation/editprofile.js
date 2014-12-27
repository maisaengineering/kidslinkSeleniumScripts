
function editprofile() {
var myrownumber = 3;
    var firstname = "test1";
    var lastname = "test1";
    var imgtapselect = 1; 

UIALogger.logStart("edit profile");
//selecting myfamily tabbar    
app.tabBar().buttons()[1].tap();

//selecting user 
target.delay(2);
window.tableViews()[0].cells()[myrownumber].tap();
   
//selecting profile details 
target.delay(2);    
window.buttons()["profileDetails"].tap();

//clicking edit button
target.delay(4);
window.buttons()["btnProfileEdit"].tap();

//changing names
target.delay(2);
window.scrollViews()[1].textFields()[1].textFields()[0].tap();
window.scrollViews()[1].textFields()[1].textFields()[0].setValue(firstname);
target.delay(2);
window.scrollViews()[1].textFields()[3].textFields()[0].tap();
window.scrollViews()[1].textFields()[3].textFields()[0].setValue(lastname);

//save and update
target.delay(2);
window.buttons()["btnEditSave"].tap();

//edit picture
//window.buttons()["btnKidProfileClose"].tap();
target.delay(2);
app.windows()[0].buttons()["btnProfileEditPhoto"].tap();

//choose photo options
target.delay(4);
app.actionSheet().collectionViews()[0].cells()[1].tap();

//select photo
target.delay(6);
window.collectionViews()[0].cells()[imgtapselect].tap();

//done photo edit button 
target.delay(10);
target.tap({x:293.50, y:45.50});
 
UIALogger.logPass("edited profile");
    //go to view profile details screenshot
    target.delay(2);    
    window.buttons()["profileDetails"].tap();
    
    target.logElementTree();
    var testName = " 001 Test";
    UIALogger.logStart(testName);
    //some test code
    UIALogger.logMessage("Starting Module 001 branch 2, validating input.");
    //capture a screenshot with a specified name
    target.captureScreenWithName("editprofile");
    
    target.delay(2); 
    target.tap({x:275.50, y:49.50});

    //more test code
    UIALogger.logPass(testName);
    
  app.tabBar().buttons()[0].tap();   
}
