//initialization
float placementSP;
float placementMP;
float placementOP;
float buttonWidth;
float buttonHeight;

void setGameState(String state) {
  if (state == "introscreen") {
    introScreen();
  } else if (state == "startUpMultiplayer") {
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



void introScreenSingleplayer() {
  String type = "Singleplayer";
  button(width/2, height/placementSP, type);
}

void introScreenMultiplayer() {
  String type = "Multiplayer";
  button(width/2, height/placementMP, type);
}

void introScreenOptions() {
  String type = "Options";
  button(width/2, height/placementOP, type);
}
