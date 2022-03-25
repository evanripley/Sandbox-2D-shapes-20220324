//global variables
int smallerDisplayDimesion;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthY1, mouthX2, mouthY2;
//
//display geometry
fullScreen(); //display_____
//landscape
println(width, height, displayWidth, displayHeight);
//diplay orientation - a few comparisons for if
//computer tells us the orientaion
//if( width >= height ) {println("landscape or square");} else {println("portrait");}
String orientation = (width >= height ) ? "landscape or square": "portrait";
println("display orientation:", orientation);
if (orientation == "portrait") println("turn your phone");
/*
if (orientation == "landscape or portrait") {
  //empty if
} else {
  println("turn your phone");
}
*/
//
//Variable Population
smallerDisplayDimesion = height; //always in landscape
rectFaceX = (width*1/2) - (smallerDisplayDimesion*1/2);
rectFaceY = height*0;
rectFaceWidth = smallerDisplayDimesion; //square Shape
rectFaceHeight = smallerDisplayDimesion; //square Shape
faceX = width*1/2;
faceY = height*1/2;
faceDiameter = smallerDisplayDimesion;
leftEyeX = width*1.4/4;
rightEyeX = width*2.6/4;
leftEyeY = height*1/4;
rightEyeY = leftEyeY;
eyeDiameter = smallerDisplayDimesion*1/4;
mouthX1 = leftEyeX;
mouthY1 = height*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
//
//Face - circle
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
//rect();
triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
//
//Mouth
//rect();
line(mouthX1, mouthY1, mouthX2, mouthY2);
//
//Measle
//rect();
