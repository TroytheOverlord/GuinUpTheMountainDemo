/// @description Insert description here
// You can write your code in this editor

// Checks for Player Collsion with Fish
if(place_meeting(x, y, oPlayer) && !collected){
    oPlayer.fishCoins++;
    collected = true;
}

// Collected 
if(collected){
    instance_destroy();
}

