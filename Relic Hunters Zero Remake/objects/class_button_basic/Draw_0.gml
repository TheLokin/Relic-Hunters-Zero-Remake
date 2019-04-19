/// @description Button

if (is_selected) {
	draw_set_color(c_magenta);
	draw_sprite(spr_button_basic, 0, x, y);
	draw_sprite_ext(spr_button_icon, 0, icon_x, icon_y, icon_scale, icon_scale, 0, c_white, 1);
} else {
	draw_set_color(c_white);
	draw_sprite(spr_button_basic, 1, x, y);
}
draw_set_font(font);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_text(text_x, text_y, text);