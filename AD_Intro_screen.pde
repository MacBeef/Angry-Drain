//initialization
boolean onIntroScreen = true;
boolean inSingleplayer = false;
boolean inMultiplayer = false;
boolean inOptions = false;
float placementSP = 2;
float placementMP = 1.6;
float placementOP = 1.34;



void introScreen() {
  background(99, 8, 39, 9);
  fill(255);
  textSize(140);
  text("Angry Drain", width/2, height - height/1.3);
  textSize(100);
  text("Return of the drainage", width/2, height - height/1.5);
  introScreenSingleplayer();
  introScreenMultilayer();
  introScreenOptions();
}

void introScreenButton(float placement, String type) {
  noStroke();
  rectMode(CENTER);
  fill(180);
  rect(width/2, height/placement + height/60, width/5, height/13, 30);
  fill(255);
  rect(width/2, height/placement, width/5, height/13, 30);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  text(type, width/2, height/placement + height/65);
}

void introScreenSingleplayer() {
  String type = "Singleplayer";
  introScreenButton(placementSP, type);
}

void introScreenMultilayer() {
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
