
String gameState;
String optionState;

void setup(){
  //Game state
  gameState = "introscreen";
  optionState = "1";
  
  //Option menu
  optionMenuQuitBoxSize = width/25;
  optionMenuQuitBoxPlacementWidth = width/12;
  
  //General option menu boxes
  optionMenuBoxPlacementHeight = height/8;
  optionMenuBoxPlacementWidth = width/11;
  optionMenuBoxSpace = width/40;
  optionMenuBoxSizeWidth = width/20;
  
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
  optionMenuState(optionState);
}
