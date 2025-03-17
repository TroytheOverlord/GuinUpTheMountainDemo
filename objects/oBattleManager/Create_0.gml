/// @description Set up for the Combat

enemyTurn = 0;
damage_to_enemy = 0;

PlayerAttack = function(damage){
    damage_to_enemy = damage;
    
    enemyTurn = 1; 
    alarm[0] = 40;
    
    oBattlePlayer.alarm[0] = 10;
}

BattleEnd = function(){
    return(oBattleEnemy.data.hp <= 0 || oBattlePlayer.data.hp <= 0);
}