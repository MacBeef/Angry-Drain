/*
-------------------------------------
 MATIERIALS
 ----------
 
 Materials is how we determine how a player interacts with objects.
 Walls should merely stop players, while enemies will collide and damage players.
 
 Materials are defined using numbers, so that they can be within an object array
 that means we always define objects with 4 points, as an array with 5 slots
 
 ObjectArrayExample[5]
 Object[0] = width Position - objectwidth/2;
 Object[1] = width Position + objectwidth/2;
 Object[2] = height Position - objectheight/2;
 Object[3] = height Position + objectheight/2;
 Object[4] = Material
 
 Within these materials we can define things such as enemy health, loot types etc
 we have different types of materials each reside on a layer,
 
 LIST OF MATERIALS
 -----------------
 //1 - OBSTACLES
/*1.1 layer 2:     */float wallMaterial = 1.1;
/*1.2 layer 0:     */float waterMaterial = 1.2;
/*1.3 layer 1 => 2:*/float stairMaterial = 1.3;

//2 - CHARACTERS:
/*2.1 layer 1:     */float playerMaterial = 2.1;
/*2.2 layer 1:     */float enemyMaterial = 2.1;
/*2.3 layer 1:     */float shootingEnemyMaterials = 2.1;
/*2.4 layer 0 => 1:*/float waterEnemyMaterial = 2.4;
/* (jumps out of the water to layer 1 so players can shoot it)*/
/*2.5 layer -:     */

//3 - LOOT:
/*3.1 Any accessible layer: */float chestMaterial = 3.1;
/*
 --------------------------------------
 */

void materialDetector(float material) {
  //1 - OBSTACLES
  if (material == wallMaterial) {
    wallMaterial();
  } else if (material == waterMaterial) {
    waterMaterial();
  }
  //2 - CHARACTERS:

  //3 - LOOT:
}

//TYPES
void stopType() {
  if (keys['a']) {
    playerX[player] += playerSPD[player];
  }
  if (keys['d']) {
    playerX[player] -= playerSPD[player];
  }
  if (keys['w']) {
    playerY[player] += playerSPD[player];
  }
  if (keys['s']) {
    playerY[player] -= playerSPD[player];
  }
}
/*
LIST OF MATERIALS
 -----------------
 //1 - OBSTACLES
 //Wall */
void wallMaterial() {
  stopType();
}
//Water
void waterMaterial() {
  stopType();
}
