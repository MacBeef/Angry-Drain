boolean[] keys = new boolean[256];
byte player = 0;

float[] playerX = new float[4];
float[] playerY = new float[4];
float[] playerHP = new float[4];
float[] playerDMG = new float[4];
float[] playerAPS = new float[4];
float[] playerSPD = new float[4];
float[] playerMaxHP = new float[4];
float[] playerHitbox = new float[4];
float playerSize;
float playerHealthBarWidth;
float playerHealthBarHeight;



void player() {
  //player color
  if (player == 0) {
    fill(255, 200, 200);
  } else if (player == 1) {
    fill(200, 255, 200);
  } else if (player == 2) {
    fill(200, 200, 255);
  } else {
    fill(255);
  }
  rect(playerX[player], playerY[player], playerSize, playerSize);
  
  //Movement
  if (keys['a'] || keyCode == LEFT) {
    playerX[player] -= playerSPD[player];
  }
  if (keys['d'] || keyCode == RIGHT) {
    playerX[player] += playerSPD[player];
  }
  if (keys['w'] || keyCode == UP) {
    playerY[player] -= playerSPD[player];
  }
  if (keys['s'] || keyCode == DOWN) {
    playerY[player] += playerSPD[player];
  }
  if (playerHP[player]<= 0) {
    fill(0);
    playerSPD[player]= 0;
  }

  //Healthbar
  fill(255);
  rect(playerX[player], playerY[player], playerHealthBarWidth, playerHealthBarHeight);
  fill(0);
  rect(playerX[player], playerY[player], playerHealthBarWidth, (playerHP[player]/playerMaxHP[player])*(playerHealthBarHeight));

  if (playerHP[player] <= 0) {
    playerHP[player] = 0;
  }
  
}
