/// @description Activates QTE

if (qte_active) {
    timer--;
    
    if (keyboard_check_pressed(target_key)) {
        button_press_count++;
    }
    
    // Check if time is up
    if (timer <= 0) {
        qte_active = false;
    
        var damageMultiplier = 1.4; // Default "Bad" multiplier
        
        if (button_press_count >= 40) {
            result_message = "Perfect!";
            damageMultiplier = 2;
        } 
        else if (button_press_count >= 35) {
            result_message = "Great!";
            damageMultiplier = 1.8;
        } 
        else if (button_press_count >= 25) {
            result_message = "Good!";
            damageMultiplier = 1.6;
        } 
        else {
            result_message = "Bad";
        }
        
        // Checks if objects exist before modifying them
        if (instance_exists(oBattleManager) && instance_exists(oBattlePlayer)) {
            oBattleManager.PlayerAttack(oBattlePlayer.data.damage * damageMultiplier);
        } 
        else {
            show_debug_message("Error: oBattleManager or oBattlePlayer does not exist!");
        }
    }
}
    