/// @description Variables

event_inherited();

#region Icono.

	icon_x = x+sprite_get_width(sprite_index)-12;		// Posición en el eje horizontal del icono.
	icon_y = y+sprite_get_height(sprite_index)/2;		// Posición en el eje vertical del icono.

#endregion
#region Texto.

	font_code = ft_medium;									// Código de la fuente.
	label_font = get_font(font_code);						// Fuente del texto.
	label_text_x = x+48;									// Posición en el eje horizontal del texto.
	label_text_y = y+sprite_get_height(sprite_index)/2;		// Posición en el eje vertical del texto.

#endregion
#region Audio.

	audio_button_selected = sfx_button_selected;		// Audio reproducido al seleccionar el botón.
	audio_button_clicked = sfx_button_clicked;			// Audio reproducido al clickar el botón.

#endregion