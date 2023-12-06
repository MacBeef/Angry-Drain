/*
 This page is for general things, that might be needed for many different purposes.
 Things such as mouseClicked(), keyPressed() etc.
 */

void mousePressed() {
  // Intro screen button redirection
  if (onIntroScreen) {
    // First of all I'll make the singleplayer button.
    if (mouseX < width/3 && mouseY > 1) {
      onIntroScreen = false;
      inSingleplayer = true;
    } else if ((mouseX < width/2 && mouseX > width/3)  && mouseY > 1) {
      onIntroScreen = false;
      inMultiplayer = true;
    } else if((mouseX > width/3 && mouseX < width)  && mouseY > 1){
      onIntroScreen = false;
      inOptions = true;
    }
  }
}
