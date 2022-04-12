String landscape, portrait, displayOritentation;

void displayOrientation() 
{
  //Landscape, not portrait nor square
  landscape = "Your eatin good!";
  portrait = "You srs? Turn your phone!";
  displayOritentation = ( displayWidth >= displayHeight ) ? landscape : portrait ;
  if ( displayOritentation==portrait ) println ( displayOritentation );
  if ( displayOritentation==landscape ) appWidth = displayWidth; //option displayWidth
  if ( displayOritentation==landscape ) appHeight = displayHeight; //option displayHeight
  //println (appWidth, appHeight);
  //
} //end
