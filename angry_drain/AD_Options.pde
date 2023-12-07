boolean inOptions;

//Quit box
float optionMenuQuitBoxSize;
float optionMenuQuitBoxPlacementWidth;

//General option menu boxes
float optionMenuBoxPlacementHeight;
float optionMenuBoxPlacementWidth;
float optionMenuBoxSpace;
float optionMenuBoxSizeWidth;

void optionMenuState(String optionState) {
  if (inOptions) {
    fill(255);
    rectMode(CENTER);
    rect(width/2, height/2, width/1.1, height/1.1, 40);
    optionMenu();
    if (optionState == "1") {
      optionAudio();
    }
  }
}

void optionMenu() {
  fill(0);
  textSize(optionMenuQuitBoxSize);
  rectMode(CENTER);
  textAlign(CENTER);
  stroke(0);
  strokeWeight(10);
  noFill();
  
  //QuitMark
  text('x', optionMenuQuitBoxPlacementWidth,
    optionMenuBoxPlacementHeight);
  
  rect(optionMenuQuitBoxPlacementWidth, optionMenuBoxPlacementHeight -optionMenuQuitBoxSize/4,
    optionMenuQuitBoxSize, optionMenuQuitBoxSize);     
}

void optionAudio() {
  fill(0);
  text("hello", width/2, height/2);
}
