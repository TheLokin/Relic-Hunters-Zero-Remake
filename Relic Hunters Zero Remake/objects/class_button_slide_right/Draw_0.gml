/// @description Button

if (!is_avaliable) {
	draw_set_alpha(0.75);
}
if (is_selected) {
	draw_set_color(c_magenta);
	draw_sprite(sprite_index, 0, current_x-distance, current_y);
	draw_sprite_ext(spr_button_icon, 0, current_x+icon_x, current_y+icon_y, icon_scale, icon_scale, 0, c_white, 1);
} else {
	draw_set_color(c_white);
	draw_sprite(sprite_index, 1, current_x-distance, current_y);
}
draw_set_font(font);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_text(current_x+text_x, current_y+text_y, text);
draw_set_alpha(1);