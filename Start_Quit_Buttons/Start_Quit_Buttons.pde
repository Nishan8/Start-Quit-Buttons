//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, green=#7AFF00 , blue=#0034EA ;
//
void setup()
{
  size (400, 300); //Landscape
  //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  appWidth = width; 
  appHeight = height;
  population();
} //End setup
//
void draw()
{
  debugLogicalRect();
  if ( noNowReallyStart==true ) { //Actual start IF
   programDraw();
  } //End IF-Start
  //
} //End draw
//
void keyPressed()
{
  //User Initiated Start Screen
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
 keyBoardShortCuts();
} //End keyPressed
//
void mousePressed()
{
  OS_Start();
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if (noNowReallyStart==true && mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
} //End mousePressed
//
//End Main Program
