/// @description Variables

#region Acciones.

	is_avaliable = true;					// Botón seleccionable.
	is_selected = false;					// Botón seleccionado.
	allow_gamepad_selection = true;			// Seleccionable con mando.
	execute_action = false;					// Ejecutar acción.
	
#endregion
#region Icono.

	icon_scale_start = 1.5;				// Escala inicial del icono.
	icon_scale_final = 1;				// Escala final del icono.
	icon_scale = icon_scale_start;		// Escala del icono.
	icon_scale_speed = 0.025;			// Velocidad a la que escala el icono.

#endregion
#region Audio.

	is_selected_play = false;		// "audio_button_selected" reproducido.
	is_clicked_play = false;		// "audio_button_clicked" reproducido.
	
#endregion
#region Posición en el grid del "controller_menu".

	grid_x = noone;		// Posición en el eje x.
	grid_y = noone;		// Posición en el eje y.

#endregion