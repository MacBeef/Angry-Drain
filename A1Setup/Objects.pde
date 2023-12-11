/*
 Objects is a lot like materials
 Objects however assign materials and deals with how things get
 rendered and not how you interact wit them

----------------------------------------------
 COLLISSION SYSTEM
*/
//We need to implement collission for enemies as well, but for now player collission
//will do for testing purposes
boolean collission(float[] target) {
  playerHitbox[0] = playerX[player] - playerSize/2;
  playerHitbox[1] = playerX[player] + playerSize/2;
  playerHitbox[2] = playerY[player] - playerSize/2;
  playerHitbox[3] = playerY[player] + playerSize/2;
  if ((target[0] <= playerHitbox[0]  || target[0] <= playerHitbox[1])
    && (target[1] >= playerHitbox[1] || target[1] >= playerHitbox[0])
    && (target[2] <= playerHitbox[2] || target[2] <= playerHitbox[3])
    && (target[3] >= playerHitbox[3] || target[3] >= playerHitbox[2])) {
    materialDetector(target[4]);
    return true;
  }
  return false;
}

//----------------------------------------------
//Object positioning template
void objectCreation(float[] objectName, float objectX, float objectY, float objectWidth, float objectHeight){
  objectName[0] = objectX - objectWidth/2;
  objectName[1] = objectX + objectWidth/2;
  objectName[2] = objectY - objectHeight/2;
  objectName[3] = objectY + objectHeight/2;
  rect(objectX, objectY, objectWidth, objectHeight);
}
//----------------------------------------------

//----------------------------------------------
//OBSTACLES
//Wall
float longWallSide;
float shortWallSide;
boolean hitWall;


//Wall
void wall(float[] objectName, float objectX, float objectY, float objectWidth, float objectHeight) {
  //We define the color
  fill(100, 100, 100);
  objectCreation(objectName, objectX, objectY, objectWidth, objectHeight);
  //we define the material type
  objectName[4] = wallMaterial;
  collission(objectName);
}
//Water
void water(float[] objectName, float objectX, float objectY, float objectWidth, float objectHeight) {
  //We define the color
  fill(80, 90, 255);
  objectCreation(objectName, objectX, objectY, objectWidth, objectHeight);
  //we define the material type
  objectName[4] = waterMaterial;
  collission(objectName);
}

void enemyBasic(float[] objectName, float objectX, float objectY) {
  //We define the color
  fill(0);
  objectCreation(objectName, objectX, objectY, 20, 20);
  //we define the material type
  objectName[4] = waterMaterial;
  collission(objectName);
}
