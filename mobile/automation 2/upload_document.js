function upload_doc() {
var docname = "test document";
var docdescription = "child's document";
var year = "2012";
var month = "October";
var date = "21";
var expyear = "2012";
var expmonth = "October";
var expdate = "21";
var imgtapselect = 4;
    
target.delay(1);
UIALogger.logStart("adding document");
//clicking vault tab;
app.tabBar().buttons()[2].tap();

//add document button;
target.delay(5);
window.buttons()[1].tap();

//selecting photo option;
target.delay(2);    
if(selectdevice == "iphone4") {
	 app.actionSheet().buttons()[1].tap();
	 }
else {
	app.actionSheet().collectionViews()[0].cells()[1].tap();
	}

//selecting photo from thumbs;
target.delay(2);
window.collectionViews()[0].cells()[imgtapselect].tap();


//tapping on save to vault button;
target.delay(5);
window.buttons()[0].tap();

//tapping on document belongs to user;
target.delay(6);
window.tableViews()[0].cells()[0].tap();

//selecting document type;
target.delay(5);
window.tableViews()[0].cells()[2].tap();

//selecting sub document type;    
target.delay(5);
window.tableViews()[0].cells()[1].tap();
UIALogger.logPass("added document");
    

UIALogger.logStart("filling document details");
   
//filling document name; 
target.delay(5);
window.scrollViews()[0].textFields()[0].tap();
target.delay(2);
window.scrollViews()[0].textFields()[0].setValue(docname);
    
    
//filling doc discription; 
target.delay(2);
window.scrollViews()[0].textViews()[0].tap();
target.delay(5);
window.scrollViews()[0].textViews()[0].setValue(docdescription);
target.delay(2);
app.windows()[1].buttons()["Done"].tap();
    
    
//picking from date;    
target.delay(2);
window.scrollViews()[0].buttons()[0].tap();
target.delay(1);
window.pickers()[0].wheels()[0].selectValue(month);
window.pickers()[0].wheels()[1].selectValue(date);
window.pickers()[0].wheels()[2].selectValue(year);
app.toolbar().buttons()["Done"].tap();


//picking to date; 
target.delay(2);
window.scrollViews()[0].buttons()[1].tap();
target.delay(1);
window.pickers()[0].wheels()[0].selectValue(expmonth);
window.pickers()[0].wheels()[1].selectValue(expdate);
window.pickers()[0].wheels()[2].selectValue(expyear);
app.toolbar().buttons()["Done"].tap();

//saving document;     
target.delay(2);
window.navigationBar().buttons()["Save"].tap();
UIALogger.logPass("saved document");
    
UIALogger.logStart("capturing document list");
//capturing list; 
target.delay(5);
target.captureScreenWithName("documents list");
    
target.delay(2);   
app.tabBar().buttons()[0].tap();
UIALogger.logPass("captured screenshot and went to home page");    
}
