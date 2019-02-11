/// @description Bar

var _bar_x = owner.x - bar_width/2;
var _bar_y = owner.y - owner.sprite_height;

draw_set_color(0.6);
draw_set_color(c_black);
draw_rectangle(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, false);
draw_set_alpha(1);