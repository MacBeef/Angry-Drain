/*
The host gets player 1, player 2 will be the first person to join and so on. 
The way we will do this is in AD Multiplayer, where we will make the number assigned to a 
player increase each time someone connects, and decreases when someone disconnects.
WWe will then use those numbers here to create a new player for each player connected, that can be controlled seperately.
WWhile we can just make 4 player classes since we know that's the player cap, I want to not repeat the code and have it change depending on player.
*/
