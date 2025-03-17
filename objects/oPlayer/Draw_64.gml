/// @description Draws Health and Xp Bars

var dx = 16;
var dy = 16;
var barw = 256;
var barh = 32;

draw_set_font(fStats);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var healthBarW = barw * (hp / maxHp);

// Health Bar
draw_sprite_stretched(spr_box, 0, dx, dy, barw, barh);
draw_sprite_stretched_ext(spr_box, 1 , dx, dy, healthBarW, barh, c_red, 0.6);

draw_text(dx + barw / 2, dy + barh / 2, "HP");

// XP Bar
var xpBarW = barw * (xp / xpRequired); 
dy += barh + 8;

draw_sprite_stretched(spr_box, 0, dx, dy, barw, barh);
draw_sprite_stretched_ext(spr_box, 1 , dx, dy, xpBarW, barh, c_blue, 0.6);

draw_text(dx + barw / 2, dy + barh / 2, $"LEVEL {level}");

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Fish Currency Counter
draw_set_font(fStats);
var dis = display_get_gui_width();

draw_sprite(sFishCoin, 0, dx, dy + 8);

var spr_width = sprite_get_width(sFishCoin); 

// Draw Fish Currency Text next to the sprite

draw_text(dx + spr_width + 4, dy + 52, $"x {fishCoins}"); 


