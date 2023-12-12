// this will be used for enemy related functions such as but not limited to Detect() Body() Death()
float[] enemyX = new float[256];
float[] enemyY = new float[256];
float[] enemyHP = new float[256];
float[] enemyDMG = new float[256];
float[] enemyAPS = new float[256];
float[] enemySPD = new float[256];
float[] enemyMaxHP = new float[256];
float[] enemyHitbox = new float[256];
float enemySize;
float enemyHealthBarWidth;
float enemyHealthBarHeight;
byte st = 1;
byte nd = 2;
byte rd = 3;



//Hurts the player if they're close enough
void melee(int ID) {
  if (playerX[player]<enemyX[ID]+20 && playerY[player]<enemyY[ID]+20 &&playerX[player]>enemyX[ID]-20 && playerY[player]>enemyY[ID]-20) {
    playerHP[player]-=1;
  }
}


//Prevents the enemy from going inside:blush: the player
void stopSelf() {
}

void enemyBasic(float newEnemyAtX, float newEnemyAtY, int ID) {
  enemySize= 20;
enemyMaxHP[ID] = 10;

  //places enemy on given coords on first frame of lvl start.
  if (enemyX[ID] == 0) {
    enemyX[ID] = newEnemyAtX;
    enemyY[ID] = newEnemyAtY;
    enemyHP[ID]= enemyMaxHP[ID];
  }

  //is if alive, continue to move and hurt
  if (enemyHP[ID]>0) {
    enemySPD[ID] = 1;
    melee(ID);
  }

  //kills enemy when health <= 0
  if (enemyHP[ID] <= 0) {
    enemyHP[ID] = 0;
    fill(255);
  } else {
    fill(0);
  }
  rect(enemyX[ID], enemyY[ID], enemySize, enemySize);

  //Movement
  if (playerX[player]<enemyX[ID]) {
    enemyX[ID] -= enemySPD[ID];
  }
  if (playerX[player]>enemyX[ID]) {
    enemyX[ID] += enemySPD[ID];
  }
  if (playerY[player]<enemyY[ID]) {
    enemyY[ID] -= enemySPD[ID];
  }
  if (playerY[player]>enemyY[ID]) {
    enemyY[ID] += enemySPD[ID];
  }


  //Healthbar
  if (enemyHP[ID]<= 0) {
    fill(0);
  } else {
    fill(255);
  }
  rect(enemyX[ID], enemyY[ID], enemyHealthBarWidth, enemyHealthBarHeight);
  fill(0, 0, 0);
  rect(enemyX[ID], enemyY[ID], enemyHealthBarWidth, (enemyHP[ID]/enemyMaxHP[ID])*(enemyHealthBarHeight));
}
