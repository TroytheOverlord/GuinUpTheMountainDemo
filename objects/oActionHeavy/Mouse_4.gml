/// @description 


if(oBattleManager.enemyTurn) exit;
    
if (instance_exists(oBattlePlayer)) {
    if (oBattlePlayer.data.charge >= 1) {
        oBattlePlayer.data.charge = 0;
        
        // Makes sure qteController exists before activating
        if (instance_exists(qteController)) {
            qteController.qte_active = true;
            qteController.button_press_count = 0;
            qteController.timer = qteController.max_time;
            qteController.result_message = "";
        } else {
            show_debug_message("Error: qteController instance does not exist!");
        }
    } else {
        show_debug_message("Not enough charge to use Special Attack.");
    }
} else {
    show_debug_message("Error: oBattlePlayer does not exist!");
}