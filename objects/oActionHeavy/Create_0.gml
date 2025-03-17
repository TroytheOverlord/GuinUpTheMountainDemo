/// @description Enables Special Attack

action = function(){
    if(oBattlePlayer.data.charge >= 1){
        oBattlePlayer.data.charge = 0;
        
        return true;
    }
    return false;
}