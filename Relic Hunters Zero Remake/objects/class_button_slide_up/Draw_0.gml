/// @description Button

draw_sprite(sprite_index, 0, current_x, current_y);
if (is_selected) {
	draw_sprite_ext(spr_button_icon, 0, current_x+icon_x, current_y, icon_scale, icon_scale, 0, c_white, 1);
}
draw_set_font(font);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_magenta);
draw_text(x+text_x, y+text_y, text);