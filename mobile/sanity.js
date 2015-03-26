function sanity() { 
  
    var email = "sravaan61@test.com";
    var password = "123456"; 
    var phonenumber = "9876543261";
    var firstname = "sravan";
    var lastname = "reddy";
    var zipcode = "29401";
    
    //add moment variables
    var momentdetails = "Automation testing"; 
    var imgtapselect = 4;           
    
    //Add child
    var addkidname = "kid"; 
    var date = "21";
    var month = "September";
    var year = "2007";
    var imgtapselect1 = 7;
    var skip = 11;
    var momentdetailsk = "Add kid flow....";
    
    //parent dashboard added milestone
    var myrownumber = 1;
    var imgtapselect2 = 6; 
    var milestonename = "Added milestone in parent dashboard..."
    //var month = "September";
    //var date = "21";
    //var year = "2007";
    var milestonetext = "This is very beautiful..."
    
    //comment...
    var comment = "added first automate comment";
    
    //Edit post...
    var imgtapselect3 = 8;
    var month1 = "May";
    var date1 = "10";
    var year1 = "2000";
    var details = "Post edited milestone to moment..."
    var cleartext = "";
    
    // Edit parent details.....
    var myrownumber1 = 1;
    var firstname2 = "sravan";
    var lastname2 = "QA";
    var imgtapselect4 = 1; 
    
    //Edit child details....
    var myrownumber2 = 0;
    var prefname = "chinnu";
    var firstname1 = "maisa";
    var lastname1 = "QA";
    var date2 = "22";
    var month2 = "March";
    var year2 = "2013";
    var imgtapselect5 = 2; 
    
    //Add document .....
    var docname = "test document added in kasfj flkdj dflkf sdfdsdlkjf jkddsflds ";
    var docdescription = "child's document jdsfh sdjfh sdkjf sdf sdmfsjdf sdfks s";
    var year3 = "2012";
    var month3 = "October";
    var date3 = "21";
    var expyear = "2015";
    var expmonth = "March";
    var expdate = "18";
    var imgtapselect6 = 4;
    
    //Edit document details.......
    var docname1 = "maisa solutions.............";
    var docdescription1 = "adsjkl sad sd sa d assd as d sda asd aas d dsa";
    var month4 = "May";
    var date4 = "11";
    var year4 = "2000";
    var month5 = "June";
    var date5 = "10";
    var year5 = "2014";
    
    //Change password .............................
    var currentpassword = "123456";
    var newpassword = "111111";
    var cnewpassword = newpassword;    
    
    //Add say something
    var saysometing = "added say somthing post in streams...";
    
    
    
    
    /********************************************************************************************/
    
        UIALogger.logStart("In-app flow........");
    
        target.delay(5);
        window.scrollViews()[0].textFields()[0].tap();
        window.scrollViews()[0].textFields()[0].setValue(email);
    
        target.delay(2);
        window.scrollViews()[0].buttons()[0].tap();

        //entering user fields
        target.delay(8);
        window.scrollViews()[0].webViews()[0].textFields()[0].tap();
        
        target.delay(2);
        app.keyboard().typeString(firstname);
        
        target.delay(4);
        window.scrollViews()[0].webViews()[0].textFields()[1].tap();
        
        target.delay(2);
        app.keyboard().typeString(lastname);
        
        window.scrollViews()[0].webViews()[0].elements()[11].tap();
        target.delay(5);
        target.frontMostApp().windows()[1].pickers()[0].wheels()[0].tap();
        target.frontMostApp().windows()[1].toolbar().buttons()["Done"].tap();

        target.delay(4);
        window.scrollViews()[0].webViews()[0].textFields()[3].tap();
        
        target.delay(2);
        app.keyboard().typeString(zipcode);
        
        window.scrollViews()[0].webViews()[0].textFields()[5].tap();
        
        target.delay(2);
        app.keyboard().typeString(phonenumber);
        
        target.delay(4);
        window.scrollViews()[0].webViews()[0].textFields()[7].tap();
        
        target.delay(2);
        app.keyboard().typeString(phonenumber);
        
        target.delay(4);
        window.scrollViews()[0].webViews()[0].secureTextFields()[0].tap();
        
        target.delay(2);
        app.keyboard().typeString(password);
        
        target.delay(4);
        window.scrollViews()[0].webViews()[0].secureTextFields()[1].tap();
        
        target.delay(2);
        app.keyboard().typeString(password);
        
        target.delay(4);
        window.scrollViews()[0].webViews()[0].switches()[0].tap();
        window.scrollViews()[0].webViews()[0].switches()[0].setValue[1];
        
        target.delay(6);
        target.captureScreenWithName("successfull register");
    
        target.delay(4);
        window.scrollViews()[0].webViews()[0].buttons()[0].tap();
        
        target.delay(2);
        UIALogger.logPass("Redeemption flow completed successfully");
        
            
    //Click on "Sign in" button....
    target.delay(4);
    window.scrollViews()[0].webViews()[0].links()[0].tap();

    //Tour.......
    target.delay(4);
    UIALogger.logStart("Tour pages...");
    target.delay(6);
    target.frontMostApp().mainWindow().images()["onboarding_hospital_background.png"].tap();
        
    if(production == "tourpages")  {
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    }
    else
    {
    target.delay(2);
    window.buttons()[0].tap();
    }
    //tour last buttons......
    target.delay(4);
    window.buttons()[1].tap();
    
    target.delay(4);
    app.tabBar().buttons()[0].tap();
    target.delay(2);
    UIALogger.logPass("Tour completed successfully");

    //ADD MOMENT..........................................................
    target.delay(2);
    UIALogger.logStart("adding moment in streams page...");
    target.delay(4);
    window.buttons()[0].tap();
    target.delay(2);
    window.scrollViews()[0].buttons()[0].tap();
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[1].tap();
    }
    target.delay(4);
    window.collectionViews()[0].cells()[imgtapselect].tap();
    target.delay(5);
    app.navigationBar().buttons()["Done"].tap();
    target.delay(5);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(momentdetails);
    target.delay(2);
    app.windows()[1].buttons()["Done"].tap();
    target.delay(5);
    window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();

    //click on post...
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    target.delay(2);
    UIALogger.logPass("posted moment succesfully...");

    //click on "No body" in replacement scereen
    target.delay(6);
    target.frontMostApp().mainWindow().buttons()[3].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[6].tap();
    target.delay(10);
    target.captureScreenWithName("moment screen");
    
    
    //Delete post.................................
    target.delay(10);
    UIALogger.logStart("delete post");
    target.frontMostApp().windows()[0].tableViews()[0].cells()[0].buttons()[2].tap();
    target.frontMostApp().actionSheet().buttons()["Cancel"].tap();
    target.delay(5);
    target.frontMostApp().windows()[0].tableViews()[0].cells()[0].buttons()[2].tap();
    target.delay(2);
    target.frontMostApp().actionSheet().collectionViews()[0].cells()["Delete post"].buttons()["Delete post"].tap();
    target.delay(2);
    UIALogger.logPass("post deleted succesfully...");
    
   
    
    //Add child.........................................
    target.delay(10);
    UIALogger.logStart("adding child");
    target.delay(2);
    app.tabBar().buttons()[1].tap();
    target.delay(2);
    app.navigationBar().rightButton().tap();
    target.delay(2);
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[0].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[0].tap();
    }
    target.delay(2);
    //selectiong pic
    window.scrollViews()[0].buttons()[0].tap();
    target.delay(2);
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[1].tap();
    }
    target.delay(4);
    window.collectionViews()[0].cells()[imgtapselect1].tap();
    target.delay(6);
    app.navigationBar().rightButton().tap();
    target.delay(6);   
    //entering kid name
    window.scrollViews()[0].textFields()[0].tap();
    window.scrollViews()[0].textFields()[0].setValue(addkidname);
    target.delay(4);
    //entering kid bdate
    window.scrollViews()[0].buttons()[1].tap();
    target.delay(2);
    if(datepicker == "simulater")    {
        window.pickers()[0].wheels()[0].selectValue(month3);
    }
    else    {
        window.pickers()[0].wheels()[0].selectValue(date3);
    }
    target.delay(2);
    if(datepicker == "simulater")   {
        window.pickers()[0].wheels()[1].selectValue(date3);
    }
    else    {
        window.pickers()[0].wheels()[1].selectValue(month3);
    }
    window.pickers()[0].wheels()[2].selectValue(year3);
    app.toolbar().buttons()["Done"].tap();
    target.delay(2);
    //submitting kid details
    window.scrollViews()[0].buttons()[2].tap();
    target.delay(2);
    target.frontMostApp().mainWindow().scrollViews()[0].buttons()[5].tap();
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
    }
    else {
        target.frontMostApp().actionSheet().collectionViews()[0].cells()["Father"].buttons()["Father"].tap();
    }
    target.delay(2);
    window.navigationBar().rightButton().tap();
    target.delay(8);
    target.frontMostApp().mainWindow().scrollViews()[0].collectionViews()[0].cells()[skip].images()[0].tap();
    target.delay(2);
    target.frontMostApp().navigationBar().rightButton().tap();
    target.delay(5);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(momentdetailsk);
    target.delay(2);
    app.windows()[1].buttons()["Done"].tap();
    target.delay(5);
    window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    target.delay(2);
    UIALogger.logPass("Added kid and posted moment");
    
    //click on "No body" in replacement scereen
    target.delay(10);
    target.frontMostApp().mainWindow().buttons()[9].tap();
    target.delay(5);
    target.captureScreenWithName("Kid dashboard");
    target.delay(5);
    app.tabBar().buttons()[0].tap();
  
    //Delete post............................................
    target.delay(10);
    UIALogger.logStart("delete post");
    target.frontMostApp().windows()[0].tableViews()[0].cells()[0].buttons()[2].tap();
    target.delay(2);
    target.frontMostApp().actionSheet().collectionViews()[0].cells()["Delete post"].buttons()["Delete post"].tap();
    target.delay(8);
    app.tabBar().buttons()[1].tap();
    target.delay(10);
    app.tabBar().buttons()[0].tap();
    target.delay(2);
    UIALogger.logPass("post deleted succesfully...");

    
    
    //Add milestone post in parent dashboard.......................................
    target.delay(10);
    app.tabBar().buttons()[1].tap();
    target.delay(2);
    UIALogger.logStart("adding milestone in parent dashboard....");
    //selecting user 
    target.delay(2);
    window.tableViews()[0].cells()[myrownumber].tap();
    target.delay(2);
    target.frontMostApp().mainWindow().buttons()[2].tap();
    target.delay(2);
    window.scrollViews()[0].buttons()[0].tap();
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[1].tap();
    }
    target.delay(4);
    window.collectionViews()[0].cells()[imgtapselect2].tap();
    target.delay(5);
    app.navigationBar().rightButton().tap();
    target.delay(5);
    window.scrollViews()[0].buttons()[1].tap();
    target.delay(2);
    window.textFields()[0].setValue(milestonename);
    target.delay(4);
    target.tap({x:197, y:35});
    //Adding date....
    target.delay(2);
    window.scrollViews()[0].buttons()[2].tap();
    target.delay(4);
    if(datepicker == "simulater")    {
        window.pickers()[0].wheels()[0].selectValue(month);
    }
    else    {
        window.pickers()[0].wheels()[0].selectValue(date);
    }
    target.delay(2);
    if(datepicker == "simulater")   {
        window.pickers()[0].wheels()[1].selectValue(date);
    }
    else    {
        window.pickers()[0].wheels()[1].selectValue(month);
    }
    window.pickers()[0].wheels()[2].selectValue(year);
    app.toolbar().buttons()["Done"].tap();
    target.delay(2);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(milestonetext);
    target.delay(2);
    app.windows()[1].buttons()["Done"].tap();
    target.delay(5);
    window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    target.delay(2);
    UIALogger.logPass("added milestone");    
        
    //Replacement screen all cases
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[6].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().leftButton().tap();
    
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[5].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().leftButton().tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[5].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[5].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().leftButton().tap();
    
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[4].tap();
    target.delay(4);
    target.frontMostApp().mainWindow().buttons()[5].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().segmentedControls()[0].buttons()["Email"].tap();
    target.delay(4);
    target.frontMostApp().navigationBar().rightButton().tap();
    
    target.delay(10);
    target.captureScreenWithName("milestone");
    //Refresh app...
    //target.delay(2);        
    //target.dragInsideWithOptions({startOffset:{x:0.5, y:0.30}, endOffset:{x:0.7, y:0.80},
    //                           duration:0.4});
    target.delay(4);
    app.tabBar().buttons()[0].tap();
    
    
    
    //Adding comment...........................................
    UIALogger.logStart("adding comment");
    target.delay(4);
    window.tableViews()[0].cells()[0].buttons()[1].tap(); 
    target.delay(2);
    window.textViews()[0].setValue(comment);
    target.delay(2);
    app.navigationBar().rightButton().tap();
    target.delay(2);
    target.captureScreenWithName("comment");
    target.delay(2);
    UIALogger.logPass("added comment successfully");
    
    
    
    //Add hearted
    target.delay(2);
    target.frontMostApp().mainWindow().tableViews()[0].cells()[0].scrollToVisible();
    target.delay(2);
    UIALogger.logStart("adding heart");
    target.delay(2);
    window.tableViews()[0].cells()[0].buttons()[0].tap(); 
    target.delay(6);
    window.tableViews()[0].cells()[0].buttons()[3].tap(); 
    target.delay(6);
    target.captureScreenWithName("hearted list");
    target.delay(2);
    window.navigationBar().leftButton().tap();
    target.delay(2);
    UIALogger.logPass("successfully hearted");
    
    
    
    //Edit post..................................
    target.delay(2);
    UIALogger.logStart("editing my milestone post");
    window.tableViews()[0].cells()[0].buttons()[2].tap(); 
    target.delay(2);
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[0].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[3].tap();
    }
    target.delay(4);
    window.scrollViews()[0].buttons()[0].tap();
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[1].tap();
    }
    target.delay(4);
    window.collectionViews()[0].cells()[imgtapselect3].tap();
    target.delay(5);
    app.navigationBar().rightButton().tap();
    target.delay(5);
    window.scrollViews()[0].buttons()[1].tap();
    target.delay(2);
    target.frontMostApp().keyboard().keys()["Delete"].touchAndHold(4.3);
    target.delay(2);
    target.frontMostApp().mainWindow().buttons()[1].tap();
    target.delay(2);
    window.scrollViews()[0].buttons()[2].tap();
    target.delay(4);
    if(datepicker == "simulater")    {
        window.pickers()[0].wheels()[0].selectValue(month1);
    }
    else    {
        window.pickers()[0].wheels()[0].selectValue(date1);
    }
    target.delay(2);
    if(datepicker == "simulater")   {
        window.pickers()[0].wheels()[1].selectValue(date1);
    }
    else    {
        window.pickers()[0].wheels()[1].selectValue(month1);
    }
    window.pickers()[0].wheels()[2].selectValue(year1);
    app.toolbar().buttons()["Done"].tap();
    target.delay(6);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(details);
    target.delay(2);
    app.windows()[1].buttons()["Done"].tap();
    target.delay(4);
    window.scrollViews()[0].scrollViews()[0].buttons()[0].tap();
    target.delay(3);
    window.scrollViews()[0].scrollViews()[0].buttons()[1].tap();
    target.delay(3);
    target.captureScreenWithName("edited milestone");
    target.delay(2);
    window.scrollViews()[0].buttons()["post icon"].tap();
    target.delay(4);
    UIALogger.logPass("edited milestone to moment");
    target.delay(3);
    target.captureScreenWithName("edited milestone streams");

    
    
    // Edit parent details.......................................
    target.delay(2);
    UIALogger.logStart("edit parent profile");
    //selecting myfamily tabbar    
    app.tabBar().buttons()[1].tap();
    //selecting user 
    target.delay(2);
    window.tableViews()[0].cells()[myrownumber1].tap();
    //selecting profile details 
    target.delay(2);    
    window.buttons()["profileDetails"].tap();
    //clicking edit button
    target.delay(4);
    window.buttons()["btnProfileEdit"].tap();
    //changing names
    target.delay(3);
    window.scrollViews()[1].textFields()[1].tap();
    window.scrollViews()[1].textFields()[1].setValue(firstname2);
    target.delay(2);
    window.scrollViews()[1].textFields()[3].tap();
    window.scrollViews()[1].textFields()[3].setValue(lastname2);
    //save and update
    target.delay(2);
    window.buttons()["btnEditSave"].tap();
    //edit picture
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
    //go to view profile details screenshot
    target.delay(2);    
    window.buttons()["profileDetails"].tap();
    target.delay(2); 
    window.buttons()["btnKidProfileClose"].tap();
    target.delay(5); 
    target.captureScreenWithName("edited profile");
    target.delay(2); 
    UIALogger.logPass("edited parent profile");
    //more test code
    app.tabBar().buttons()[0].tap(); 
    
    
    
    //Edit child details......................................................
    target.delay(2); 
    UIALogger.logStart("edit child profile");
    //selecting myfamily tabbar    
    app.tabBar().buttons()[1].tap();
    //selecting user 
    target.delay(2);
    window.tableViews()[0].cells()[myrownumber2].tap();
    //selecting profile details 
    target.delay(2);    
    window.buttons()["profileDetails"].tap();
    //clicking edit button
    target.delay(4);
    window.buttons()["btnProfileEdit"].tap();
    //changing names
    target.delay(2);
    window.scrollViews()[1].textFields()[0].tap();
    window.scrollViews()[1].textFields()[0].setValue(prefname);
    target.delay(2);
    window.scrollViews()[1].textFields()[1].tap();
    window.scrollViews()[1].textFields()[1].setValue(firstname1);
    target.delay(2);
    window.scrollViews()[1].textFields()[3].tap();
    window.scrollViews()[1].textFields()[3].setValue(lastname1);
    //date of birth...
    target.delay(4);
    window.scrollViews()[1].buttons()[1].tap();
    target.delay(4);
    window.scrollViews()[1].buttons()[1].tap();
    target.delay(6);
    if(datepicker == "simulater")    {
        window.pickers()[0].wheels()[0].selectValue(month2);
    }
    else    {
        window.pickers()[0].wheels()[0].selectValue(date2);
    }
    
    target.delay(2);
    if(datepicker == "simulater")   {
        window.pickers()[0].wheels()[1].selectValue(date2);
    }
    else    {
        window.pickers()[0].wheels()[1].selectValue(month2);
    }
    window.pickers()[0].wheels()[2].selectValue(year2);
    app.toolbar().buttons()["Done"].tap();
    //select gender...
    target.delay(2); 
    window.scrollViews()[1].buttons()[4].tap();
    //Other details....
    target.delay(2); 
    window.scrollViews()[1].textViews()[0].tap();
    window.scrollViews()[1].textViews()[0].setValue("Am a good girl");
    //Doctor name....
    target.delay(2); 
    window.scrollViews()[1].textFields()[4].scrollToVisible();
    window.scrollViews()[1].textFields()[4].tap();
    window.scrollViews()[1].textFields()[4].setValue("greene");
    //Doctor Email....
    window.scrollViews()[1].textFields()[5].scrollToVisible();
    window.scrollViews()[1].textFields()[5].tap();
    window.scrollViews()[1].textFields()[5].setValue("Doctor@test.com");
    //Doctor phone....
    window.scrollViews()[1].textFields()[6].scrollToVisible();
    window.scrollViews()[1].textFields()[6].tap();
    window.scrollViews()[1].textFields()[6].setValue("6768686768");
    //Dentist name....
    window.scrollViews()[1].textFields()[7].scrollToVisible();
    window.scrollViews()[1].textFields()[7].tap();
    window.scrollViews()[1].textFields()[7].setValue("robert");
    //Dentist Email....
    window.scrollViews()[1].textFields()[8].scrollToVisible();
    window.scrollViews()[1].textFields()[8].tap();
    window.scrollViews()[1].textFields()[8].setValue("dentist@test.com");
    //Dentist phone....
    window.scrollViews()[1].textFields()[9].scrollToVisible();
    window.scrollViews()[1].textFields()[9].tap();
    window.scrollViews()[1].textFields()[9].setValue("3748578398");
    //Medicines....
    window.scrollViews()[1].textViews()[1].tap();
    window.scrollViews()[1].textViews()[1].setValue("medicines....");
    //Food Allergies....
    window.scrollViews()[1].textViews()[2].scrollToVisible();
    window.scrollViews()[1].textViews()[2].tap();
    window.scrollViews()[1].textViews()[2].setValue("Food Allergies....");
    //Drug Allergies....
    window.scrollViews()[1].textViews()[3].scrollToVisible();
    window.scrollViews()[1].textViews()[3].tap();
    window.scrollViews()[1].textViews()[3].setValue("Drug Allergies....");
    //Medical Issues....
    window.scrollViews()[1].textViews()[4].scrollToVisible();
    window.scrollViews()[1].textViews()[4].tap();
    window.scrollViews()[1].textViews()[4].setValue("Medical Issues....");
    //Special Needs....
    window.scrollViews()[1].textViews()[5].scrollToVisible();
    window.scrollViews()[1].textViews()[5].tap();
    window.scrollViews()[1].textViews()[5].setValue("Special Needs....");
    //Other Health/Wellness....
    window.scrollViews()[1].textViews()[6].scrollToVisible();
    window.scrollViews()[1].textViews()[6].tap();
    window.scrollViews()[1].textViews()[6].setValue("Other Health/Wellness....");
    //save and update
    target.delay(2);
    window.buttons()["btnEditSave"].tap();
    target.delay(4);
    target.captureScreenWithName("editedprofile");
   //edit picture
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
    window.collectionViews()[0].cells()[imgtapselect5].tap();
    //done photo edit button 
    target.delay(10);
    window.navigationBar().buttons()["Done"].tap();
    //go to view profile details screenshot
    target.delay(2);    
    window.buttons()["profileDetails"].tap();
    target.delay(2); 
    //capture a screenshot with a specified name
    target.delay(2); 
    window.buttons()["btnKidProfileClose"].tap();
    target.delay(2);
    UIALogger.logPass("edited child profile");
    //more test code
    target.delay(4); 
    app.tabBar().buttons()[0].tap(); 
    
    
    
    
    //Document adding.......................................
    target.delay(2);
    UIALogger.logStart("adding document");
    //clicking vault tab;
    target.delay(2);
    app.tabBar().buttons()[2].tap();
    //Document tour
    if(production == "tourpages")   {
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    target.delay(2);
    window.buttons()[0].tap();
    }
    else
    {
        target.delay(2);
        window.buttons()[0].tap();
        target.delay(2);
        window.buttons()[0].tap();
    }
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
    window.collectionViews()[0].cells()[imgtapselect6].tap();
    //rotate doc anticlockwise
    target.delay(3);
    window.buttons()[1].tap();
    //rotate doc clockwise
    target.delay(3);
    window.buttons()[2].tap();
    //tried to adding second image
    target.delay(3);
    window.buttons()[0].tap();
    target.delay(3);
    //selecting photo option;
    if(selectdevice == "iphone4") {
        app.actionSheet().buttons()[1].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[1].tap();
    }
    //selecting photo from thumbs;
    target.delay(2);
    window.collectionViews()[0].cells()[imgtapselect6].tap();
    //rotate doc anticlockwise
    target.delay(3);
    window.buttons()[1].tap();
    //tapping on save to vault button;
    target.delay(5);
    window.buttons()[3].tap();
    //tapping on document belongs to user;
    target.delay(6);
    window.tableViews()[0].cells()[0].tap();
    //selecting document type;
    target.delay(5);
    window.tableViews()[0].cells()[2].tap();
    //selecting sub document type;    
    target.delay(5);
    window.tableViews()[0].cells()[0].tap();
    target.delay(5);
    window.tableViews()[0].cells()[1].tap();
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
    target.delay(2);
    if(datepicker == "simulater")    {
        window.pickers()[0].wheels()[0].selectValue(month3);
    }
    else    {
        window.pickers()[0].wheels()[0].selectValue(date3);
    }
    target.delay(2);
    if(datepicker == "simulater")   {
        window.pickers()[0].wheels()[1].selectValue(date3);
    }
    else    {
        window.pickers()[0].wheels()[1].selectValue(month3);
    }
    window.pickers()[0].wheels()[2].selectValue(year3);
    app.toolbar().buttons()["Done"].tap();
    //picking to date; 
    target.delay(2);
    window.scrollViews()[0].buttons()[1].tap();
    target.delay(2);
    if(datepicker == "simulater")    {
        window.pickers()[0].wheels()[0].selectValue(expmonth);
    }
    else    {
        window.pickers()[0].wheels()[0].selectValue(expdate);
    }
    
    target.delay(2);
    if(datepicker == "simulater")   {
        window.pickers()[0].wheels()[1].selectValue(expdate);
    }
    else    {
        window.pickers()[0].wheels()[1].selectValue(expmonth);
    }
    window.pickers()[0].wheels()[2].selectValue(expyear);
    app.toolbar().buttons()["Done"].tap();
    //saving document;     
    target.delay(5);
    window.navigationBar().buttons()["Save"].tap();
    //capturing list; 
    target.delay(5);
    target.captureScreenWithName("documents list");
    target.delay(6);   
    UIALogger.logPass("added document");
    target.delay(6);   
    app.tabBar().buttons()[0].tap();
    
    
    
    //Change password .............................
    target.delay(2); 
    UIALogger.logStart("Changing Password")
    app.tabBar().buttons()[4].tap();
    target.delay(4);
    window.tableViews()[0].cells()[1].tap();
    //entering current password
    target.delay(2);
    window.scrollViews()[0].secureTextFields()[0].tap();
    window.scrollViews()[0].secureTextFields()[0].setValue(currentpassword);
    //entering new password
    target.delay(2);
    window.scrollViews()[0].secureTextFields()[1].tap();
    window.scrollViews()[0].secureTextFields()[1].setValue(newpassword);
    //entering confirm new password
    target.delay(2);
    window.scrollViews()[0].secureTextFields()[2].tap();
    window.scrollViews()[0].secureTextFields()[2].setValue(cnewpassword);
    //tapping submit
    target.delay(2);
    window.scrollViews()[0].buttons()[0].tap();
    //go to homepage
    target.delay(4);
    app.tabBar().buttons()[0].tap();
    UIALogger.logPass("Successfully changed password");
    target.delay(2)
    logout();
    
    //login with new password
    UIALogger.logStart("login with new password")
    window.textFields()[0].tap();
    window.textFields()[0].setValue(email);
    target.delay(1);
    target.frontMostApp().mainWindow().secureTextFields()[0].tap();
    window.secureTextFields()[0].setValue(newpassword);
    target.delay(1);
    window.buttons()[0].tap();
    UIALogger.logPass("Logged in successfully");
    
    
    
    // View and change document type...................................
    target.delay(2);
    UIALogger.logStart("view and change document list");
    //clicking vault tab;
    app.tabBar().buttons()[2].tap();
    //clicking document menu;
    target.delay(5);
    window.tableViews()[0].cells()[2].tap();
    //clicking document sub list;
    target.delay(5);
    window.tableViews()[0].cells()[0].tap();
    //selecting users list;
    target.delay(5);
    window.tableViews()[0].cells()[0].tap();
    target.delay(5);
    window.tableViews()[0].cells()[0].tap();
    //clicking on options
    target.delay(10);
    target.frontMostApp().mainWindow().tableViews()[0].tap();
    app.windows()[0].buttons()["btnProfileOptions"].tap();
    // selecting change document type
    target.delay(2);
    if(selectdevice == "iphone4") { 
        app.actionSheet().buttons()[0].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[0].tap();
    }
    // selecting change document main menu
    target.delay(5);
    window.tableViews()[0].cells()[1].tap();
    // selecting change document sub menu
    target.delay(5);
    window.tableViews()[0].cells()[0].tap();
    // closing document
    target.delay(10);
    window.buttons()[2].tap();
    target.delay(6);
    UIALogger.logPass("changed document list");
    //capturing list; 
    target.delay(5);
    target.captureScreenWithName("see document changed list");
    target.delay(2);   
    app.tabBar().buttons()[0].tap();

    
    
    //Document switch person..........................
    target.delay(4);   
    UIALogger.logStart("Switch person");
    target.delay(2);   
    app.tabBar().buttons()[2].tap();
    //clicking document menu;
    target.delay(5);
    window.tableViews()[0].cells()[1].tap();
    //clicking document sub list;
    target.delay(5);
    window.tableViews()[0].cells()[0].tap();
    //clicking on options
    target.delay(10);
    target.logElementTree();
    app.windows()[0].buttons()["btnProfileOptions"].tap();
    // selecting new person
    target.delay(2);
    if(selectdevice == "iphone4") { 
        app.actionSheet().buttons()[0].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[1].tap();
    }
    // selecting change document main menu
    target.delay(5);
    window.tableViews()[0].cells()[1].tap();
    target.delay(5);
    UIALogger.logPass("changed document list");

    
    
    //Edit document details......................................
    target.delay(5);
    UIALogger.logStart("Edit document details...");
    //clicking on options
    target.delay(10);
    target.logElementTree();
    app.windows()[0].buttons()["btnProfileOptions"].tap();
    // selecting change document type
    target.delay(2);
    if(selectdevice == "iphone4") { 
        app.actionSheet().buttons()[0].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[2].tap();
    }
    //filling document name; 
    target.delay(5);
    window.scrollViews()[0].textFields()[0].tap();
    target.delay(2);
    window.scrollViews()[0].textFields()[0].setValue(docname1);
    //filling doc discription; 
    target.delay(2);
    window.scrollViews()[0].textViews()[0].tap();
    target.delay(5);
    window.scrollViews()[0].textViews()[0].setValue(docdescription1);
    target.delay(2);
    app.windows()[1].buttons()["Done"].tap();
    //picking from date;    
    target.delay(2);
    window.scrollViews()[0].buttons()[0].tap();
    target.delay(2);
    if(datepicker == "simulater")    {
        window.pickers()[0].wheels()[0].selectValue(month4);
    }
    else    {
        window.pickers()[0].wheels()[0].selectValue(date4);
    }
    target.delay(2);
    if(datepicker == "simulater")   {
        window.pickers()[0].wheels()[1].selectValue(date4);
    }
    else    {
        window.pickers()[0].wheels()[1].selectValue(month4);
    }
    window.pickers()[0].wheels()[2].selectValue(year4);
    app.toolbar().buttons()["Done"].tap();
    //picking to date; 
    target.delay(2);
    window.scrollViews()[0].buttons()[1].tap();
    target.delay(2);
    if(datepicker == "simulater")    {
        window.pickers()[0].wheels()[0].selectValue(month5);
    }
    else    {
        window.pickers()[0].wheels()[0].selectValue(date5);
    }
    target.delay(2);
    if(datepicker == "simulater")   {
        window.pickers()[0].wheels()[1].selectValue(date5);
    }
    else    {
        window.pickers()[0].wheels()[1].selectValue(month5);
    }
    window.pickers()[0].wheels()[2].selectValue(year5);
    app.toolbar().buttons()["Done"].tap();
    //saving document;     
    target.delay(3);
    window.navigationBar().buttons()["Save"].tap();
    target.delay(5);
    target.captureScreenWithName("documents list");
    target.delay(10);
    window.buttons()[2].tap();
    target.delay(3);    UIALogger.logPass("Edit successfully...");
    target.delay(2);
    app.tabBar().buttons()[2].tap();
    
    
    
    //Shared document.................................
    target.delay(5);
    UIALogger.logStart("Share document..");
    target.delay(5);
    window.tableViews()[0].cells()[1].tap();
    //clicking document sub list;
    target.delay(5);
    window.tableViews()[0].cells()[0].tap();
    //Click on share button
    target.delay(55);
    target.frontMostApp().mainWindow().buttons()[4].tap();   
    target.delay(55);
    target.tap({x:190.50, y:75.00});
    target.delay(2);
    target.tap({x:6.50, y:385.50});
    target.tap({x:34.50, y:435.50});
    target.tap({x:67.00, y:440.00});
    target.tap({x:110.00, y:382.50});
    target.tap({x:30.50, y:438.00});
    target.tap({x:159.00, y:497.00});
    target.tap({x:16.50, y:437.00});
    target.tap({x:224.00, y:494.00});
    target.tap({x:9.50, y:551.00});
    target.tap({x:153.50, y:386.00});
    target.tap({x:117.50, y:389.00});
    target.tap({x:216.00, y:389.00});
    target.tap({x:187.50, y:551.50});
    target.tap({x:14.00, y:547.50});
    target.tap({x:163.50, y:438.00});
    target.tap({x:251.50, y:486.50});
    target.tap({x:21.50, y:436.00});
    target.tap({x:247.00, y:378.00});
    target.tap({x:296.00, y:432.50});
    target.tap({x:216.00, y:552.00});
    target.tap({x:132.00, y:491.50});
    target.tap({x:271.50, y:378.50});
    target.tap({x:260.50, y:486.50});
    //Click on Done...
    target.delay(5);
    target.tap({x:305.00, y:8.50});
    target.delay(5);
    UIALogger.logPass("shared successfully...");

    
    //Delete document...............................
    target.delay(5);
    UIALogger.logStart("Delete document");
    target.delay(5);
    target.frontMostApp().mainWindow().buttons()["btnProfileOptions"].tap();
    // selecting delete
    target.delay(2);
    if(selectdevice == "iphone4") { 
        app.actionSheet().buttons()[0].tap();
    }
    else {
        app.actionSheet().collectionViews()[0].cells()[3].tap();
    }
    target.delay(2);
    UIALogger.logPass("Deleted successfully...");

    
    //Say something.................................................
    target.delay(2);
    UIALogger.logStart("posting say something");
    target.delay(2);
    app.tabBar().buttons()[0].tap();
    target.delay(8);
    window.buttons()[1].tap(); 
    target.delay(2);
    window.scrollViews()[0].textViews()[0].tap();
    window.scrollViews()[0].textViews()[0].setValue(saysometing);
    target.delay(2);
    app.windows()[1].buttons()["Done"].tap();
    target.delay(2);
    app.windows()[0].scrollViews()[0].buttons()[0].tap();
    target.delay(10);
    target.captureScreenWithName("say something");
    target.delay(2);
    UIALogger.logPass("posted say something");
    
       
    
    
}













