
function editprofile() {
var myrownumber = 4;
    var firstname = "automat";
    var lastname = "testing";
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
window.scrollViews()[1].textFields()[1].tap();
window.scrollViews()[1].textFields()[1].setValue(firstname);
target.delay(2);
window.scrollViews()[1].textFields()[3].tap();
window.scrollViews()[1].textFields()[3].setValue(lastname);

//save and update
target.delay(2);
window.buttons()["btnEditSave"].tap();

//edit picture
//window.buttons()["btnKidProfileClose"].tap();
target.delay(6);
app.windows()[0].buttons()["btnProfileEditPhoto"].tap();

//choose photo options
target.delay(4);

if(selectdevice == "iphone4") {
	app.actionSheet().buttons()[1].tap();
	}

else {
	app.actionSheet().collectionViews()[0].cells()[1].tap();
   }

//select photo
target.delay(6);
window.collectionViews()[0].cells()[imgtapselect].tap();
//done photo edit button 
target.delay(10);
window.navigationBar().buttons()["Done"].tap();
UIALogger.logPass("edited profile");
     
    UIALogger.logStart("capturing user profile");
    //go to view profile details screenshot
    target.delay(2);    
    window.buttons()["profileDetails"].tap();
    target.delay(2); 
    //capture a screenshot with a specified name
    target.captureScreenWithName("editedprofile");
    
    target.delay(2); 
    window.buttons()["btnKidProfileClose"].tap();
    target.delay(2); 
  
    //more test code
     app.tabBar().buttons()[0].tap(); 
    UIALogger.logPass("captured user profile and went to homepage");
    
   
}
