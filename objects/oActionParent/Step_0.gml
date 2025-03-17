/// @description Prevents Player from Acting during the 
/// Enemies Turn

if(oBattleManager.enemyTurn){
    image_alpha = 0.2;
}

else{
    image_alpha = 1;
}