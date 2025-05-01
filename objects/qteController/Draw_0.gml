/// @description Draws QTE to the Screen 

if (qte_active) {
    draw_set_font(qteText);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(140, 70, "Time Remaining: " + string(floor(timer / room_speed)));
    draw_text(140,85, "Button Press Count: " + string(button_press_count));
}

if (!qte_active && result_message != "") { 
    // Only show the result after the QTE ends
    draw_text(140, 85, "Result: " + result_message);
}