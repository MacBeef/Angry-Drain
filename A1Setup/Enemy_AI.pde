// this will be used for enemy related functions such as but not limited to Detect() Body() Death()

//Hurts the player if they're close enough
void hurt(){
if (playerX[player]<height/2+20 && playerY[player]<2+20 &&playerX[player]>2-20 && playerY[player]>2-20){
playerHP[player]-=1;
}
}


//Prevents the enemy from going inside:blush: the player
void stopSelf(){

}
