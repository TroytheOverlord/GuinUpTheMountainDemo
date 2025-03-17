/// @description Enemy Tracking Player

if(instance_exists(oPlayer) && distance_to_object(oPlayer) < distance_to_player){
    targetX = oPlayer.x;
}

else{
    targetX = random_range(xstart - 100, xstart + 100);
}

alarm[0] = 60;