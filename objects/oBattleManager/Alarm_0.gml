/// @description 

oBattleEnemy.data.hp -= damage_to_enemy;

if(BattleEnd()){
    alarm[2] = 60;
}

else{
    alarm[1] = 60;
    
    oBattleEnemy.alarm[0] = 30;
}

oBattlePlayer.data.charge += 0.4;
if(oBattlePlayer.data.charge > 1){
    oBattlePlayer.data.charge = 1;
}