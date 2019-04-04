/// @description Variables

#region Interacción.

	button_selected = noone;		// Botón seleccionado.

	mouse = instance_create_layer(0, 0, "crosshair", crosshair);		// Ratón.
		
	grid_button = noone;				// Grid con los botones.
	grid_button_size = 8;				// Tamaño del grid con los botones.
	event_user(0);						// Asignación de los botones al grid.
	allow_input = false;				// Permitir la interacción del mando.
	input_time = room_speed*0.25;		// Tiempo mínimo para interaccionar.
	alarm[0] = room_speed*0.5;			// Cooldown para la interacción del mando.
		
#endregion