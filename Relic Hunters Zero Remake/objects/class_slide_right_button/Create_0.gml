/// @description Variables

event_inherited();

#region Desplazamiento.

	distance = 32;				// Distancia que se desplaza.
	move_speed = 5;				// Velocidad a la que se desplaza el botón.
	final_x += distance;		// Posición en el eje horizontal final del botón.

#endregion
#region Icono.

	icon_x = sprite_get_width(sprite_index)-16-distance;		// Posición en el eje horizontal del icono.
	icon_y = sprite_get_height(sprite_index)/2;					// Posición en el eje vertical del icono.

#endregion
#region Texto.

	font_key = ft_large;					// Código de la fuente.
	font = get_font(font_key);		// Fuente del texto.
	if (x > 0) {
		text_x = distance;		// Posición en el eje horizontal del texto.
	} else {
		text_x = distance-x;		// Posición en el eje horizontal del texto corregida.
	}
	text_y = sprite_get_height(sprite_index)/2;		// Posición en el eje vertical del texto.

#endregion