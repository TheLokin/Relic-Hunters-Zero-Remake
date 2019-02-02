/// @description Variables

event_inherited();

#region Desplazamiento.

	move_speed = 0;				// Velocidad a la que se desplaza el botón.
	start_x = x;				// Posición en el eje horizontal inicial del botón.
	start_y = y;				// Posición en el eje vertical inicial del botón.
	current_x = start_x;		// Posición en el eje horizontal actual del botón.
	current_y = start_y;		// Posición en el eje vertical actual del botón.
	final_x = x;				// Posición en el eje horizontal final del botón.
	final_y = y;				// Posición en el eje vertical final del botón.
	
#endregion
#region Audio.

	audio_button_selected = sfx_button_selected;		// Audio reproducido al seleccionar el botón.
	audio_button_clicked = sfx_button_clicked;			// Audio reproducido al clickar el botón.

#endregion