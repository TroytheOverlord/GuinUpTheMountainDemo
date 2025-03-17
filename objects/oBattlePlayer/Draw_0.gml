/// @description Draws Health Bar

draw_self();

var X = xstart - 20;
var Y = ystart + 20;
var W = 40;
var H = 8;

draw_sprite_stretched(spr_box, 0, X, Y, W, H);
draw_sprite_stretched_ext(spr_box, 1, X, Y, W * (data.hp / data.maxHp), H, c_green, 1);

Y += H;
H = 4;

draw_sprite_stretched(spr_box, 0, X, Y, W, H);
draw_sprite_stretched_ext(spr_box, 1, X, Y, W * data.charge, H, c_aqua, 1);