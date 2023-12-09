import processing.net.*;
void setup() {
  //------------------------------------------------
  //MAIN SETUP
  buttonWidth = width/5;
  buttonHeight = height/13;
  surface.setTitle("Angry Drain; return of drainage");
  size(1920, 1080);

  //Game state
  gameState = "introscreen";
  optionState = "Audio";

  //Setup/intro screen menu buttons
  placementSP = 2.5;
  placementMP = 1.9;
  placementOP = 1.53;
  //------------------------------------------------

  //------------------------------------------------
  //OPTIONS
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

  //Option menu different box positions
  boxPos1 = 1.2;
  boxPos2 = 2.1;
  boxPos3 = 3;
  boxPos4 = 3.9;
  //------------------------------------------------

  //------------------------------------------------
  //PLAYER
  spawnLocationY = height/2;
  spawnLocationX = width/2;
  playerX[player] = spawnLocationX;
  playerY[player] = spawnLocationY;
  maxHP[player] = 25;
  playerHP[player] = maxHP[player];
  playerDMG[player] = 2;
  playerAPS[player] = 1;
  playerSPD[player] = 2;
  playerSize = width/45;


  //------------------------------------------------

  //------------------------------------------------
  //GAME DIFFICULTY

  //------------------------------------------------

  //------------------------------------------------
  //MULTIPLAYER

  //------------------------------------------------

  //------------------------------------------------
  //SINGLEPLAYER

  //------------------------------------------------
}
