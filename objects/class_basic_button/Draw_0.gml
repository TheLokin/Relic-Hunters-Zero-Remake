/// @description Botón

if (is_selected) {
	image_index = 0;
	draw_set_color(c_magenta);
} else {
	image_index = 1;
	draw_set_color(c_white);
}
draw_sprite(spr_basic_button, image_index, x, y);		// Botón.
if (is_selected) {
	draw_sprite_ext(spr_icon_button, 0, icon_x, icon_y, icon_scale, icon_scale, 0, c_white, 1);		// Icono.
}
draw_set_font(label_font);								// Fuente del texto.
draw_set_valign(fa_middle);								// Alinación vertical.
draw_set_halign(fa_left);								// Alineación horizontal.
draw_text(label_text_x, label_text_y, label_text);		// Texto.

event_inherited();