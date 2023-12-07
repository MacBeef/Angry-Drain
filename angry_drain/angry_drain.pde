
String gameState;
String optionState;

void setup(){
  //Game state
  gameState = "introscreen";
  optionState = "Audio";
  
  //Option menu quit boxes
  optionMenuQuitBoxPlacementWidth = width/12;
  
  //General option menu boxes
  optionMenuBoxSpace = width/40;
  optionMenuBoxSizeWidth = width/6;
  optionMenuBoxSizeHeight = width/25;
  optionMenuBoxPlacementHeight = height/8;
  optionMenuBoxPlacementWidth = (optionMenuQuitBoxPlacementWidth + optionMenuBoxSizeWidth/1.5);
  
  //color change for whether button pressed in options menu
  unpressedButtonColor = 255;
  pressedButtonColor = 200;
  optionColor1 = unpressedButtonColor;
  optionColor2 = unpressedButtonColor;
  optionColor3 = unpressedButtonColor;
  
  //the different box positions
  boxPos1 = 1.2;
  boxPos2 = 2.1;
  boxPos3 = 3;
  boxPos4 = 3.9;
  
  //Introscreen menu buttons
  placementSP = 2.5;
  placementMP = 1.9;
  placementOP = 1.53;
  
  buttonWidth = width/5;
  buttonHeight = height/13;
  surface.setTitle("Angry Drain; return of drainage");
  fullScreen();
  size(1920, 1080);
  
}

void draw(){
  setGameState(gameState);
  optionMenuState();
}
