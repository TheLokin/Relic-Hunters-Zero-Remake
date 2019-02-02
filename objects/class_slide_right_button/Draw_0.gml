/// @description Botón

if (is_selected) {
	image_index = 0;
	draw_set_color(c_magenta);
} else {
	image_index = 1;
	draw_set_color(c_white);
}
if (!is_avaliable) {
	draw_set_alpha(0.75);		// Opacidad.
}
draw_sprite(spr_slide_right_button, image_index, current_x-distance, current_y);		// Botón.
if (is_selected) {
	draw_sprite_ext(spr_icon_button, 0, current_x+icon_x, current_y+icon_y, icon_scale, icon_scale, 0, c_white, 1);		// Icono.
}
draw_set_font(label_font);													// Fuente del texto.
draw_set_valign(fa_middle);													// Alinación vertical.
draw_set_halign(fa_left);													// Alineación horizontal.
draw_text(current_x+label_text_x, current_y+label_text_y, label_text);		// Texto.
draw_set_alpha(1);															// Reestablecer opacidad.

event_inherited();