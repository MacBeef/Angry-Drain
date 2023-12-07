//initialization
float placementSP;
float placementMP;
float placementOP;
float buttonWidth;
float buttonHeight;

void setGameState(String state) {
  if (state == "introscreen") {
    introScreen();
  } else if (state == "multiplayer") {
    startUpMultiplayer();
  } else if (state == "singleplayer") {
    startUpSingleplayer();
  }
}

void introScreen() {
  background(99, 8, 39, 9);
  fill(255);
  textSize(140);
  text("Angry Drain", width/2, height - height/1.2);
  textSize(100);
  text("Return of the drainage", width/2, height - height/1.35);
  textSize(50);
  text("Press 'ESC' to quit", width/2, height - height/15);
  introScreenSingleplayer();
  introScreenMultiplayer();
  introScreenOptions();
}

void introScreenButton(float placement, String type) {
  noStroke();
  rectMode(CENTER);
  fill(180);
  rect(width/2, height/placement + height/60, buttonWidth, buttonHeight, 30);
  fill(255);
  rect(width/2, height/placement, buttonWidth, buttonHeight, 30);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  text(type, width/2, height/placement + height/65);
}

void introScreenSingleplayer() {
  String type = "Singleplayer";
  introScreenButton(placementSP, type);
}

void introScreenMultiplayer() {
  String type = "Multiplayer";
  introScreenButton(placementMP, type);
}

void introScreenOptions() {
  String type = "Options";
  introScreenButton(placementOP, type);
}

/*
I have added the house button clicks in General,
 I didn't put them here due to me needing to use mousePressed()
 for other purposes so didn't want it to be here arbitrarily.
 */
