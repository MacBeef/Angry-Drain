float spawnLocationX;
float spawnLocationY;
float[] wallTest = new float[5];
float[] waterTest = new float[5];

void level1() {
  //Level setup
  //We should be able to setup spawnpoint for the level here too
  background(60, 220, 120);
  player();
  
  wall(wallTest, width/2, height/4, longWallSide, shortWallSide);
  water(waterTest, width/2, height-height/4, longWallSide, shortWallSide);
  
}
