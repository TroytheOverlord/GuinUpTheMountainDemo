/// @description 

var enemyDamage = oBattleEnemy.data.damage * random_range(0.7, 1.2);
oBattlePlayer.data.hp -= enemyDamage;

enemyTurn = 0;

if(BattleEnd()){
    alarm[2] = 60;
}