//global variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color pink=#C135BB, purple=#FF00FF, buttonColour; //Notice Nightmode BLUE Values
//
void quitButtonSetupPopulation (int centerX, int centerY) 
{
  quitButtonX = 80; //1/4 on one-half, 1/4 on other half
  quitButtonY = centerY - appHeight*1/3;
  quitButtonWidth = appWidth*1/7;
  quitButtonHeight = appHeight*1/10;
}//end
//
void quitButtonDraw () 
{
  //DisplayOrientation Finishing Code
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { //Hover Over Effect
    buttonColour = pink;
  } else {
    buttonColour = purple;
  }//End Hover Over Effect
  //
  //alternate verification that mousex and y is on the button
  println("x-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t look at middle value");
  println("x-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t look at middle value");
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite); //Not night mode compatible, must change
}//end
void quitButtonKeyPressed() 
{
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit(); //Key Board si separated on key-variables: key & keyCode
}
//
void quitButtonMousePressed() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}
