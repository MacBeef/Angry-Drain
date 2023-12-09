boolean[] keys = new boolean[1256];
byte player = 0;

float[] playerX = new float[4];
float[] playerY = new float[4];
float[] playerHP = new float[4];
float[] playerDMG = new float[4];
float[] playerAPS = new float[4];
float[] playerSPD = new float[4];
float[] maxHP = new float[4];
float[] playerHitbox = new float[4];
float playerSize;

void player() {
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
}

boolean playerCollission(float[] target) {
  playerHitbox[0] = playerX[player] - playerSize/2;
  playerHitbox[1] = playerX[player] + playerSize/2;
  playerHitbox[2] = playerY[player] - playerSize/2;
  playerHitbox[3] = playerY[player] + playerSize/2;
  
  if ((target[0] <= playerHitbox[0] || target[0] <= playerHitbox[1])
    && (target[1] >= playerHitbox[1] || target[1] >= playerHitbox[0])
    && (target[2] <= playerHitbox[2] || target[2] <= playerHitbox[3])
    && (target[3] >= playerHitbox[3] || target[3] >= playerHitbox[2])) {
    return true;
  }
  return false;
}
