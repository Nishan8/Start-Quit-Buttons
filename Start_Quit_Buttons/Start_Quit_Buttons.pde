//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() 
{
  size(400, 300);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  //Population
  float centerX = appWidth * 1/2; //Point
  float centerY = appHeight * 1/2; //Point 
  quitButtonX = centerX - (appWidth * 1/4 ) ; 
  quitButtonY = centerY - ( appHeight * 1/4) ; 
  quitButtonWidth = appWidth * 1/2 ; //Line not point, thus use formula
  quitButtonHeight = appHeight *  1/2 ; //Line not point, thus use formula 
} //End setup
//
void draw()
{
  if ( noNowReallyStart==true ) { //Actual start IF
  background(0); //Night Mode not considered yet
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button
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
  //Quit Button: Logical Rectangle, see println in draw()
  if () exit();
  //
} //End mousePressed
//
//End Main Program
