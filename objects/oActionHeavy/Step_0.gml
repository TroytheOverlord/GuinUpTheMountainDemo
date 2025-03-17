/// @description Makes Player unable to use Special 
/// Unless bar is full

if(oBattleManager.enemyTurn || oBattlePlayer.data.charge < 1){
    image_alpha = 0.2;
}

else{
    image_alpha = 1;
}