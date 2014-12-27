
function inviteparentaccess() {
    
    /* edit controls */
    
    var clnumber = 4;  /* change contact list number */
    
    app.tabBar().buttons()[1].tap();
    target.delay(1);
    
    app.navigationBar().rightButton().tap();
    
    target.delay(1);
    app.actionSheet().collectionViews()[0].cells()[1].tap();
    
    target.delay(2);
    window.tableViews()[0].cells()[clnumber].tap();

    target.delay(4);
    window.scrollViews()[0].switches()[0].setValue(0);
    window.scrollViews()[0].switches()[0].setValue(1);
    
    target.delay(2);
    window.scrollViews()[0].buttons()[1].tap();
    
    target.delay(1);
    app.actionSheet().collectionViews()[0].cells()[2].tap();
    
    target.delay(1);
    window.scrollViews()[0].buttons()[2].tap();
    
    target.delay(2);
    app.navigationBar().rightButton().tap();
    
}
