/*
-------------------------------------
 MATIERIALS
 
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
 /*1.1 layer 2:*/ float[] squareWall = new float[5];
 /*1.2 layer 2:*/ float[] LongWall = new float[5];
 /*1.3 layer 0:*/ float[] water = new float[5];
 /*1.4 layer 1 => 2:*/ float[] stairs = new float[5];
 
 //2 - Characters:
 /*2.1 layer 1: */ float[] playerMaterial = new float[5];
 /*2.2 layer 1: Basic enemy
 /*2.3 layer 1: shooting enemy
 /*2.4 layer 0 => 1: water enemy (jumps out of the water to layer 1 so players can shoot it)
 
 //3 - LOOT:
 /*3.1 Any accessible layer: chest
 --------------------------------------
 */
 
 //1 OBSTACLES
 
