function applaunch() {

target.delay(4);    
target.dragInsideWithOptions({startOffset:{x:0.5, y:0.80}, endOffset:{x:0.7, y:0.20},
                                 duration:0.4});
target.delay(2);        
target.dragInsideWithOptions({startOffset:{x:0.5, y:0.30}, endOffset:{x:0.7, y:0.80},
                                 duration:0.4});
    
target.delay(2);  
UIATarget.localTarget().deactivateAppForDuration(4);
target.delay(2);
    
target.captureScreenWithName("app-launching " + nu ); 
target.delay(2);
    
}
