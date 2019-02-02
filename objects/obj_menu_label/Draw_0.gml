/// @description Etiqueta

draw_sprite(sprite_index, image_index, x, y);			// Etiqueta.
draw_set_font(label_font);								// Fuente del texto.
draw_set_valign(fa_middle);								// Alinación vertical.
draw_set_halign(fa_left);								// Alineación horizontal.
draw_set_color(c_magenta);								// Color del texto.
draw_text(label_text_x, label_text_y, label_text);		// Texto.