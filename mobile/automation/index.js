var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();


#import "registration_login.js"
#import "login.js"
#import "login_first.js"
#import "moment.js"
#import "milestone.js"
#import "saysomething.js"
#import "upload_document.js"
#import "view_change_document.js"
#import "editprofile.js"
#import "addchild.js"
#import "inviteparentaccess.js"
#import "invitefriend.js"
#import "changepassword.js"
#import "sharepostfb.js"
#import "logout.js"
#import "loginandlogout.js"
#import "dynlogin.js"
#import "dynregistration_login.js"
#import "dynregistration.js"
#import "tour.js"

/**** select your case to test ****/

//loginandlogout();
//registration_login();
//login_first();
//login();
//milestone(); 
//moment();
//upload_doc();
//view_change_doc();
//editprofile();
//addchild();
//inviteparentaccess()
//invitefriend ()
//changepassword()
//sharepostfb();
//tour.js();
//logout();


/*********** edit controls **************/





//dynamic login loop//

var email_login = ["ios20@test.com", "ios21@test.com", "ios26@test.com", "ios27@test.com"];
var text="";
for(i=0; i<email_login.length; i++) {
    
    //text+=loginandlogout();
}



//dynamic register loop//

var email_regsiter = ["ios83@test.com", "ios84@test.com"];
var phonenumber_register = ["9999999983", "9999999984"];


var text_r="";

for(j=0; j<phonenumber_register.length; j++) {
    
    text_r+=dynregistration();
}



 