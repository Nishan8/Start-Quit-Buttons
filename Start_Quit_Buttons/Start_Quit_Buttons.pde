//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, green=#7AFF00 , blue=#0034EA ;
//
void setup()
{
  size (500, 400); //Landscape
  //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  appWidth = width; 
  appHeight = height;
  population();
  //Rectangle and text before start up
  fill(1);
rect(1, 1, 1440, 2560);
textSize(44);
fill(0, 408, 612, 816);
text("Press 'space' to start", 25, 200);  // Default depth, no z-value specified
//Rectangle and Text End before start up
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
   if ( keyCode == UP && start==true ) noNowReallyStart = true;
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
