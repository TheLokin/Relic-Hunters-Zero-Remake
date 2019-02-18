/// @description Variables

#region Interacción.

	button_selected = noone;		// Botón seleccionado.

	#region Ratón.
		
		mouse = instance_create_layer(0, 0, "crosshair", crosshair);		// Ratón.
		old_mouse_x = mouse_x;												// Última posición en el eje horizontal del ratón.
		old_mouse_y = mouse_y;												// Última posición en el eje vertical del ratón.

	#endregion
	#region Mando.
		
		grid_button = noone;				// Grid con los botones.
		grid_button_size = 8;				// Tamaño del grid con los botones.
		event_user(0);						// Asignación de los botones al grid.
		allow_input = false;				// Permitir la interacción del mando.
		input_time = room_speed*0.25;		// Tiempo mínimo para interaccionar.
		alarm[0] = room_speed*0.5;			// Cooldown para la interacción del mando.
		
	#endregion

#endregion
#region Animación.

	//draw_fade(c_black);

#endregion