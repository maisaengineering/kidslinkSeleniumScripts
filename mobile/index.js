var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();

var selectdevice = "iphone5"



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
#import "addcomment.js"
#import "addheart.js"
#import "editmilestone.js"
#import "addchild_new.js"
#import "applaunch.js"
#import "sanity.js"
#import "deletepost.js"
#import "parentpost.js"
#import "total.js"

/**** select your case to test ****/

//loginandlogout();
//registration_login();
//login_first();
//login();
//saysomething()
//moment();
//milestone();
//upload_doc();
//view_change_doc();
//editprofile();
//addchild();
//inviteparentaccess()
//invitefriend(0)
//changepassword()
//sharepostfb();
//addcomment();
//addheart();
//editmilestone();
//addchild_new();
//logout();
//deletepost();
//applaunch();
sanity();
//parentpost();
//total();






/*

//login and logout loop test//
var text="";
var i;
var n=1;
for(i=0; i<100; i++) {
    //text+=loginandlogout();
    //text+=applaunch();
    //var nu = n++
}


//dynamic login test//
var email_login = ["ios20@test.com", "ios21@test.com", "ios26@test.com", "ios27@test.com"];
var text="";
var i;
for(i=0; i<email_login.length; i++) {
    //text+=loginandlogout();
}

//dynamic register test//
var email_regsiter = ["ios209@test.com"];
var phonenumber_register = ["9999999209"];
var text_r="";
for(j=0; j<phonenumber_register.length; j++) {
   //text_r+=dynregistration();
}


*/
   