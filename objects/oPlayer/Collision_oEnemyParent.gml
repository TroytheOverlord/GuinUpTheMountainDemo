/// @description Sends Player and Enemy into the 
/// Turn Based Battle Area

if(instance_exists(oBattleSwitcher)) exit;
    
var switcher = instance_create_depth(0, 0, 0, oBattleSwitcher);

switcher.playerData = self; 
switcher.enemyData = other;
switcher.originalRoom = room;

room_goto(Battle);