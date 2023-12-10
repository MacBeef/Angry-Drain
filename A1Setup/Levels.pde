float spawnLocationX;
float spawnLocationY;
float[] wallTest = new float[5];
float[] waterTest = new float[5];

void level1() {
  wall(wallTest, width/2, height/4, longWallSide, shortWallSide);
  water(waterTest, width/2, height-height/4, longWallSide, shortWallSide);
}
