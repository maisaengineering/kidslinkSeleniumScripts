function logout() {
    

target.delay(5);
    UIALogger.logStart("logout")
   target.delay(2); 
 app.tabBar().buttons()[4].tap();

 target.delay(2); 
 window.tableViews()[0].cells()[5].tap();
 target.delay(4); 
UIALogger.logPass("Loggged out success");    

}
