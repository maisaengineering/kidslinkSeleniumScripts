function addheart() {

UIALogger.logStart("adding heart");

window.tableViews()[0].cells()[0].buttons()[0].tap(); 
   
target.delay(6);
window.tableViews()[0].cells()[0].buttons()[3].tap(); 
 
target.delay(6);
target.captureScreenWithName("hearted list");

target.delay(2);
window.navigationBar().leftButton().tap();
    
UIALogger.logPass("hearted");
    
}