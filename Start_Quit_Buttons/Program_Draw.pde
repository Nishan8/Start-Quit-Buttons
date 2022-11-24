void programDraw() {
   background(0); //Night Mode not considered yet
    //
    //Logical Rectangle
    println("X-Value", quitButtonX, mouseX, quitButtonX+quitButtonWidth );
    println("Y-Value", quitButtonY, mouseY, quitButtonY+quitButtonHeight);
    //
    //Quit Button Hover Over Feature
    if ( noNowReallyStart==true && mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
      quitButtonColour = green; //Remember Knight Mode
    } else {
      quitButtonColour = blue; //Remember Day Mode
    } //End Hover Over
    //
    fill(quitButtonColour);
    rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button
}//End programDraw
