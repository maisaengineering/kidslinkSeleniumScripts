
function invitefriend () {

    var contactnumber = 2;
    
app.tabBar().buttons()[3].tap();

target.delay(2);
window.buttons()["btnInviteFriends"].tap();

target.delay(2);
target.tap({x:35, y:455});

target.delay(2);
window.tableViews()[0].cells()[contactnumber].tap();

/*log condition to get the inviter name */

UIALogger.logStart("First Functional Test");

var getinvitername = window.tableViews()[0].cells()[contactnumber].name();

UIALogger.logPass("you are invited to " + getinvitername);

}
