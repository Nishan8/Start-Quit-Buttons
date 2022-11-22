//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
int  quitButtonX, quitButtonY, quitButtonWidth, QuitButtonHeight;
//
void setup() 
{
  size(400, 300);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  
} //End setup
//
void draw()
{
  if ( noNowReallyStart==true ) { //Actual start IF
  background(0); //Night Mode not considered yet
  rect( quitButtonX, quitButtonY, quitButtonWidth, QuitButtonHeight ); //Quit Button
  } //End If-Start
  //
} //End draw
//
void keyPressed()
{
  //
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
  //Prototype KeyBoard Quit Button OR Shortcut
  if ( key=='Q' || key=='q' ) exit();
  if ( keyCode == ESC ) exit();
  //
} //End keyPressed
//
void mousePressed() 
{
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press the Space Bar");
  // 
} //End mousePressed
//
//End Main Program
