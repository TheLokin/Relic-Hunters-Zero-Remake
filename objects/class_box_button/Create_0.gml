/// @description Variables

event_inherited();

#region Opciones.

	option = 0;			// Opción seleccionada.
	max_option = 0;		// Número máximo de opciones.
	
#endregion
#region Icono.

	icon_x = x;											// Posición en el eje horizontal del icono.
	icon_y = y+sprite_get_height(sprite_index)/2;		// Posición en el eje vertical del icono.

#endregion
#region Texto.
	
	font_code = ft_medium;						// Código de la fuente.
	label_font = get_font(font_code);			// Fuente del texto.
	label_option = noone;						// Array con las opciones.
	label_text_second = "MISSING LABEL";		// Texto secundario.
	
#endregion
#region Audio.

	audio_button_selected = sfx_button_selected;		// Audio reproducido al seleccionar el botón.
	
#endregion