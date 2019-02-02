/// @description Variables

event_inherited();

#region Texto.

	font_code = ft_large;									// Código de la fuente.
	label_font = get_font(font_code);						// Fuente del texto.
	label_code = "label_menu";								// Código del texto.
	label_text = get_label(label_code);						// Texto.
	label_text_x = x+24;									// Posición en el eje horizontal del texto.
	label_text_y = y+sprite_get_height(sprite_index)/2;		// Posición en el eje vertical del texto.
	
#endregion
#region Animación.
	
	image_speed = 0;		// Velocidad.
	image_index = 0;		// Sprite inicial.

#endregion