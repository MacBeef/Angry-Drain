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
  if (inOptions) {
    //This is the quit button for the options interface
    if ( (mouseX >= optionMenuQuitBoxPlacementWidth - optionMenuBoxSizeHeight/2)
      && (mouseX <= optionMenuQuitBoxPlacementWidth + optionMenuBoxSizeHeight/2)
      && (mouseY >= optionMenuBoxPlacementHeight - optionMenuBoxSizeHeight/1.5
      && (mouseY <= optionMenuBoxPlacementHeight + optionMenuBoxSizeHeight/4))) {
      inOptions = false;
      optionState ="Audio";
      } else if(optionSwicthMouse(boxPos1)){
              optionState = "Audio";
      }else if(optionSwicthMouse(boxPos2)){
              optionState = "2";
      }else if(optionSwicthMouse(boxPos3)){
              optionState = "3";
      }else if(optionSwicthMouse(boxPos4)){
              optionState = "4";
      }
    }
  }
