/// @description Variables

event_inherited();

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

	is_audio_selected_play = false;		// "audio_button_selected" reproducido.
	audio_button_selected = noone;		// Audio reproducido al seleccionar el botón.
	is_audio_clicked_play = false;		// "audio_button_clicked" reproducido.
	audio_button_clicked = noone;		// Audio reproducido al clickar el botón.

#endregion
#region Animación.
	
	image_index = 0;		// Frame inicial.
	image_speed = 0;		// Velocidad.

#endregion
#region Posición en el grid del "controller_menu".

	grid_x = noone;		// Posición en el eje x.
	grid_y = noone;		// Posición en el eje y.

#endregion