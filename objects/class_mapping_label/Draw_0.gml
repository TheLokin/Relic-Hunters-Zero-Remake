/// @description Etiqueta

draw_self();											// Etiqueta.
draw_set_font(label_font);								// Fuente del texto.
draw_set_valign(fa_middle);								// Alinación vertical.
draw_set_halign(fa_center);								// Alineación horizontal.
draw_set_color(c_white);								// Color del texto.
draw_text(label_text_x, label_text_y, label_text);		// Texto.