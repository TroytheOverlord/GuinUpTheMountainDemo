/// @description Gets Enemy Variables from Overworld 
/// and transfer them into the Battle Area

data = oBattleSwitcher.enemyData;
sprite_index = data.sprite_index;

if(sprite_index = sSeal || sprite_index = sSealMad){
    
    image_xscale = 0.05;
    image_yscale = 0.05;
}

else if(sprite_index = sBoss || sprite_index = sBossAttack){
    image_xscale = 0.05;
    image_yscale = 0.05;
}
    