/// @description Button

if (is_selected) {
	draw_sprite(sprite_index, 1, x, y);
} else {
	draw_sprite(sprite_index, 0, x, y);
}
draw_set_font(font);
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_set_color(c_magenta);
draw_text(text_x, text_y, text);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(text_secondary_x, text_secondary_y, text_secondary);
if (is_selected) {
	draw_sprite_ext(spr_button_icon, 0, icon_x, icon_y, icon_scale, icon_scale, 0, c_white, 1);
}