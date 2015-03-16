
function deletepost() {

target.delay(5);
target.frontMostApp().windows()[0].tableViews()[0].cells()[0].buttons()[2].tap();
//target.frontMostApp().actionSheet().buttons()["Cancel"].tap();

    target.delay(2);
    target.frontMostApp().actionSheet().collectionViews()[0].cells()["Delete post"].buttons()["Delete post"].tap();
    //target.delay(2);
    target.frontMostApp().alert().buttons()[0].tap();
}