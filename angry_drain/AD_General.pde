/*
 This page is for general things, that might be needed for many different purposes.
 Things such as mouseClicked(), keyPressed() etc.
 */

void mousePressed() {
  // Intro screen button redirection
  if (gameState == "introscreen") {
    //Redirects to specific page if you press a button
    if ((mouseX >= width/2 - buttonWidth/2  && mouseX <= width/2 + buttonWidth/2) &&
      (mouseY >= height/placementSP - buttonHeight/2  && mouseY <= height/placementSP + buttonHeight/2) 
      && (!inOptions) && (gameState == "introscreen")) {
      gameState = "singleplayer";
    } else if ((mouseX >= width/2 - buttonWidth/2  && mouseX <= width/2 + buttonWidth/2) &&
      (mouseY >= height/placementMP - buttonHeight/2  && mouseY <= height/placementMP + buttonHeight/2) 
      && (!inOptions) && (gameState == "introscreen")) {
      gameState = "multiplayer";
    } else if ((mouseX >= width/2 - buttonWidth/2  && mouseX <= width/2 + buttonWidth/2) &&
      (mouseY >= height/placementOP - buttonHeight/2  && mouseY <= height/placementOP + buttonHeight/2)
      && (!inOptions) && (gameState == "introscreen")) {
      inOptions = true;
    }
  }
  //Option interface
  if (inOptions){
    //This is the quit button for the options interface
    if((mouseX >= optionMenuQuitBoxPlacementWidth - optionMenuQuitBoxSize/2) 
    && (mouseX <= optionMenuQuitBoxPlacementWidth + optionMenuQuitBoxSize/2) 
    && (mouseY >= optionMenuBoxPlacementHeight - optionMenuQuitBoxSize/1.5 
    && (mouseY <= optionMenuBoxPlacementHeight + optionMenuQuitBoxSize/4))){
      inOptions = false;
    } 
  }
}
