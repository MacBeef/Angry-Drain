boolean inOptions;
//colors for whether buttons are pressed
int unpressedButtonColor;
int pressedButtonColor;
int optionColor1;
int optionColor2;
int optionColor3;
int optionColor4;
float boxPos1;
float boxPos2;
float boxPos3;
float boxPos4;
//Quit box
float optionMenuQuitBoxPlacementWidth;
//General option menu boxes
float optionMenuBoxPlacementHeight;
float optionMenuBoxPlacementWidth;
float optionMenuBoxSpace;
float optionMenuBoxSizeWidth;
float optionMenuBoxSizeHeight;

void optionMenuState() {
  if (inOptions) {
    fill(255);
    rectMode(CENTER);
    rect(width/2, height/2, width/1.1, height/1.1, 40);
    optionMenu();
    menuBoxSwitch();
  }
}

void optionMenu() {
  fill(0);
  textSize(optionMenuBoxSizeHeight);
  rectMode(CENTER);
  textAlign(CENTER);
  stroke(0);
  strokeWeight(10);
  noFill();

  //Quit mark and box
  text('x', optionMenuQuitBoxPlacementWidth,
    optionMenuBoxPlacementHeight);
  rect(optionMenuQuitBoxPlacementWidth, optionMenuBoxPlacementHeight -optionMenuBoxSizeHeight/4,
    optionMenuBoxSizeHeight, optionMenuBoxSizeHeight);
  
  //boxes
  menuBoxes(boxPos1, "Audio", optionColor1);
  menuBoxes(boxPos2, "General", optionColor2);
  menuBoxes(boxPos3, "wow", optionColor3);
  menuBoxes(boxPos4, "baddie", optionColor4);
  
  //Severing line
  rect(width/2, height/6, width*0.905, 5);
}

void menuBoxes(float positioning, String menuName, int optionColor) {
  fill(optionColor);
  rectMode(CENTER);
  rect(positioning * optionMenuBoxPlacementWidth, optionMenuBoxPlacementHeight
    -optionMenuBoxSizeHeight/4, optionMenuBoxSizeWidth, optionMenuBoxSizeHeight);

  textSize(optionMenuBoxSizeHeight*0.75);
  fill(0);
  textAlign(CENTER);
  text(menuName, positioning *optionMenuBoxPlacementWidth,
    optionMenuBoxPlacementHeight);
}

void optionAudio() {
  fill(0);
  text("hello", width/2, height/2);
}
void option2() {
  fill(0);
  text("2", width/2, height/2);
}
void option3() {
  fill(0);
  text("3", width/2, height/2);
}
void option4() {
  fill(0);
  text("4", width/2, height/2);
}

void menuBoxSwitch() {
  switch (optionState) {
  case "Audio":
    optionAudio();
    optionColor1 = pressedButtonColor;
    optionColor2 = unpressedButtonColor;
    optionColor3 = unpressedButtonColor;
    optionColor4 = unpressedButtonColor;
    break;
  case "2":
    option2();
    optionColor1 = unpressedButtonColor;
    optionColor2 = pressedButtonColor;
    optionColor3 = unpressedButtonColor;
    optionColor4 = unpressedButtonColor;
    break;
  case "3":
    option3();
    optionColor1 = unpressedButtonColor;
    optionColor2 = unpressedButtonColor;
    optionColor3 = pressedButtonColor;
    optionColor4 = unpressedButtonColor;
    break;
  case "4":
    option4();
    optionColor1 = unpressedButtonColor;
    optionColor2 = unpressedButtonColor;
    optionColor3 = unpressedButtonColor;
    optionColor4 = pressedButtonColor;
    break;
  }
}
boolean optionSwicthMouse(float positioning) {
  if((mouseX >= positioning * optionMenuBoxPlacementWidth - optionMenuBoxSizeWidth/2)
      && (mouseX <= positioning * optionMenuBoxPlacementWidth + optionMenuBoxSizeWidth/2)
      && (mouseY >= optionMenuBoxPlacementHeight - optionMenuBoxSizeHeight/1.5
      && (mouseY <= optionMenuBoxPlacementHeight + optionMenuBoxSizeHeight/4))) {
        return true;
    }
  return false;
}
