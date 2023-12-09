float spawnLocationX;
float spawnLocationY;
float[] rectpos = new float[4];


void level1() {
  rect(width/4, height/4, 200, 200);
  rectpos[0] = width/4 - 100;
  rectpos[1] = width/4 + 100;
  rectpos[2] = height/4 - 100;
  rectpos[3] = height/4 + 100;
  
  if(playerCollission(rectpos)){
    print("ouch");
  }
}
