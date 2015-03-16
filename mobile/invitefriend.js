
function invitefriend (textemail) {
    
 UIALogger.logStart("inviting friend");   
var contactnumber = 2;

app.tabBar().buttons()[3].tap();

target.delay(2);
//target.logElementTree();
//window.buttons()[1].tap();
app.navigationBar().buttons()[1].tap();
target.delay(2);
    
window.buttons()["About Sharing Select"].tap();
target.delay(2);
    

/*log condition to get the inviter name */
    
//target.logElementTree();

window.navigationBar().segmentedControls()[0].buttons()[textemail].tap();

var getinvitername = window.tableViews()[0].cells()[contactnumber].name();
   
window.tableViews()[0].cells()[contactnumber].tap();

UIALogger.logPass("you are invited to " + getinvitername);

}
