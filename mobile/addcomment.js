function addcomment() {

UIALogger.logStart("adding comment");

window.tableViews()[0].cells()[0].buttons()[0].tap(); 
    
//target.delay(2);
window.textViews()[0].setValue("first automate comment");

target.delay(2);
//window.buttons()[1].tap();       
app.navigationBar().rightButton().tap();
  
target.delay(2);
    
target.captureScreenWithName("comment");

UIALogger.logPass("added comment successfully");
    
}