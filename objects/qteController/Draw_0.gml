/// @description Draws QTE to the Screen 

if (qte_active) {
    draw_set_font(qteText);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    draw_text(10, 10, "Time Remaining: " + string(floor(timer / room_speed)));
    draw_text(10, 30, "Button Press Count: " + string(button_press_count));
}

if (!qte_active && result_message != "") { 
    // Only show the result after the QTE ends
    draw_text(10, 50, "Result: " + result_message);
}