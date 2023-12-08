byte player = 0;
float[] playerX = new float[4];
float[] playerY = new float[4];
float[] playerHP = new float[4];
float[] playerDMG = new float[4];
float[] playerAPS = new float[4];
float[] playerSPD = new float[4];

void DoTheBigCrash() {
  int Crash = 1/0;/*This should do it right?... Kill it I mean*/
}
/*
The host gets player 1, player 2 will be the first person to join and so on.
 The way we will do this is in AD Multiplayer, where we will make the number assigned to a
 player increase each time someone connects, and decreases when someone disconnects.
 WWe will then use those numbers here to create a new player for each player connected, that can be controlled seperately.
 WWhile we can just make 4 player classes since we know that's the player cap, I want to not repeat the code and have it change depending on player.
 */

/*The first time it's called it'll assing that player as the host(0), the rest will be 1, 2, and 3*/
void newPlayer() {

  player();
}

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
  rect(playerX[player], playerY[player], 50, 50);
if (keys.get(int('a')) == true) {
    playerX[player] -= playerSPD[player];
  }
  if (keys.get(int('d')) == true) {
    playerX[player] += playerSPD[player];
  }
  if (keys.get(int('w')) == true) {
    playerY[player] -= playerSPD[player];
  }
  if (keys.get(int('s')) == true) {
    playerY[player] += playerSPD[player];
  }
}
