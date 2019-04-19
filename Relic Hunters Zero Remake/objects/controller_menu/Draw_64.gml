/// @description Version

if (room != rm_menu6 && room != rm_menu7) {
	draw_set_font(font);
	draw_set_halign(fa_right);
	draw_set_valign(fa_center);
	draw_set_color(c_magenta);
	draw_set_alpha(0.8);
	draw_text(text_x+text_border, text_y+text_border, version);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(text_x, text_y, version);
}