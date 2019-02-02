/// @description Botón

if (is_selected) {
	image_index = 0;
} else {
	image_index = 1;
}
draw_sprite(spr_large_box_button, image_index, x, y);						// Botón.
draw_set_font(label_font);													// Fuente del texto.
draw_set_valign(fa_middle);													// Alinación vertical.
draw_set_halign(fa_right);													// Alineación horizontal.
draw_set_color(c_magenta);													// Color del texto.
draw_text(label_text_x, label_text_y, label_text);							// Texto.
draw_set_halign(fa_center);													// Alineación horizontal.
draw_set_color(c_white);													// Color del texto.
draw_text(label_text_second_x, label_text_second_y, label_text_second);		// Texto secundario.
if (is_selected) {
	draw_sprite_ext(spr_icon_button, 0, icon_x, icon_y, icon_scale, icon_scale, 0, c_white, 1);		// Icono.
}

event_inherited();