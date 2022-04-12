//global variables
int appWidth, appHeight;
color resetWhite=#FFFFFF;
//
int reset, smallerDisplayDimesion, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
float measleDiameter, measleRadius, measleX, measleY;
Boolean nightMode=false;
color measleColour, whiteReset;
float measleRectX, measleRectY, measleWidth, measleHeight;
PImage img, img2, img3, img4;
//
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger = false;
//
String title = "we can see you";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color red=#FF007C, resetDefaultInk=#FFFFFF;
//
String bottom = "were in your walls";
float bottomX, bottomY, bottomWidth, bottomHeight;
void setup() 
{
  //display geometry
  fullScreen(); //display_____
  //landscape
  int appWidth = displayWidth, appHeight = displayHeight;
  println (width, height, displayWidth, displayHeight); //verification of values
  println(appWidth, appWidth); //canvas flexibility
  //diplay orientation - a few comparisons for if
  //Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio calculations)
  //Computer Tells us the orientation, important for Cell Phone Orientation
  //-tell user specific orientation
  //if ( appWidth >= appWidth ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Bruh, turn your phone";
  String orientation = ( appWidth >= appHeight ) ? ls : p; //ternary operator, repeats IF-ELSE
  println(DO, orientation); //Verification of value
  if ( orientation==p ) println(instruct);
  /*
if (orientation == "landscape or portrait") {
   //empty if
   } else {
   println("turn your phone");
   }
   */
  //
  //Variable Population
  img = loadImage("mouth.png");
  img2 = loadImage("eye.png");
  img3 = loadImage("eye2.png");
  img4 = loadImage("nose.png");
  smallerDisplayDimesion = appHeight; //always in landscape
  reset = smallerDisplayDimesion / smallerDisplayDimesion;
  rectFaceX = (appWidth*1/2) - (smallerDisplayDimesion*1/2);
  rectFaceY = appHeight*0;
  rectFaceWidth = smallerDisplayDimesion; //square Shape
  rectFaceHeight = smallerDisplayDimesion; //square Shape
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerDisplayDimesion;
  leftEyeX = appWidth*1.4/4;
  rightEyeX = appWidth*2.6/4;
  leftEyeY = appHeight*1/4;
  rightEyeY = leftEyeY;
  eyeDiameter = smallerDisplayDimesion*1/4;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerDisplayDimesion*1/25;
  xNose1 = faceX;
  yNose1 = leftEyeY;
  xNose2 = faceX - leftEyeY*1/2;
  yNose2 = faceY ;
  xNose3 = faceX + leftEyeY*1/2;
  yNose3 = faceY ;
  titleX = displayWidth*1/5;
  titleY = displayHeight*1/30;
  titleWidth = displayWidth*3/5;
  titleHeight = displayHeight*1/10;
  bottomX = displayWidth*1/5;
  bottomY = displayHeight*1/1.2;
  bottomWidth = displayWidth*3/5;
  bottomHeight = displayHeight*1/10;
  //
  //Face - circle
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  //ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  //ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  //Nose
  //rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
  //triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
  //
  //Mouth
  int mouthWidth = int (mouthX2 - mouthX1);
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthOpen*1/2, mouthY1-mouthOpen*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //to one pixel
  //comparison rect() line only no caps no strokeweight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight);
  //
  //rect1
  //rect(830, 25, 280, 1025);
  //rect2
  //rect(600, 100, 480, 150);
  //rect3
  //rect(460, 400, 1000, 300);
  //nose
  image(img4, 820, 200, 310, 400);
  displayOrientation();
  population();
}
//
void draw() 
{
  //Measle
  float measleDiameter = random (smallerDisplayDimesion*1/100, smallerDisplayDimesion*1/25); //small measle = *1/100, large measle = *1/25
  float measleRadius = measleDiameter*1/3;
  println ((measleDiameter*1/2));
  float measleX = random(rectFaceX+measleRadius, ((rectFaceX+rectFaceWidth) - measleRadius));
  float measleY = random(rectFaceY+measleRadius, ((rectFaceY+rectFaceHeight) - measleRadius));
  Boolean nightMode=false; //IF-ELSE similar to ternary op
  //color red = #FF0000, measleColour = red, whiteReset=#000000; //need range here
  color measleColour = (nightMode==false) ? color (255, random(0, 50), random(0, 120)) : color (255, random(0, 50), 0) ; //ternary op for day:night
  color whiteReset=#FFFFFF;
  //
  float measleRectX = measleX-measleDiameter*1/2;
  float measleRectY = measleY-measleDiameter*1/2;
  float measleWidth = measleDiameter;
  float measleHeight = measleDiameter;
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values given other variables (similar to button code)
  noStroke(); //shape outline
  fill(measleColour);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  stroke(reset); //to one pixel
  fill(whiteReset);
  //
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  //ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  //ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  //Mouth
  int mouthWidth = int (mouthX2 - mouthX1);
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthOpen*1/2, mouthY1-mouthOpen*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //to one pixel
  //comparison rect() line only no caps no strokeweight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight);
  //
  //mouth
  image(img, 600, 475, 750, 750);
  //right eye
  image(img2, 1050, 115, 400, 400);
  //lefteye
  image(img3, 500, 170, 400, 220);
  //
  titleFont = createFont ("Comic Sans MS", 55);
  fill(red);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 77);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetDefaultInk);
  //  
  titleFont = createFont ("Comic Sans MS", 55);
  fill(red);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 77);
  text(bottom, bottomX, bottomY, bottomWidth, bottomHeight);
  fill(resetDefaultInk);
  quitButtonDraw();
}
//
void keyPressed()
{
  quitButtonKeyPressed();
}
//
void mousePressed() 
{
  quitButtonMousePressed();
}
//
//end
