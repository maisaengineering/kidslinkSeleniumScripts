
function sharepostfb() {

target.delay(1);
app.tabBar().buttons()[1].tap();

target.delay(1);
window.tableViews()[0].cells()[2].tap();

target.delay(2);
window.tableViews()[0].cells()[0].buttons()["white arrow down icon"].tap();
app.actionSheet().collectionViews()[0].cells()[0].tap();

target.delay(2);    
app.tabBar().buttons()[0].tap();    
}