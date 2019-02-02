/// @description Botón

draw_sprite(spr_slide_up_button, 0, current_x, current_y);		// Botón.
if (is_selected) {
	draw_sprite_ext(spr_icon_button, 0, current_x+icon_x, current_y, icon_scale, icon_scale, 0, c_white, 1);		// Icono.
}
draw_set_font(label_font);									// Fuente del texto.
draw_set_valign(fa_middle);									// Alinación vertical.
draw_set_halign(fa_center);									// Alineación horizontal.
draw_set_color(c_magenta);									// Color del texto.
draw_text(x+label_text_x, y+label_text_y, label_text);		// Texto.

event_inherited();