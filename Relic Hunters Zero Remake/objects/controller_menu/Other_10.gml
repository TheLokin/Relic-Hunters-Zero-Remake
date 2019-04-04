/// @description Grid con los botones

if (instance_exists(class_button)) {
	var _count_button = instance_number(class_button);		// Número de botones en la habitación.
	var _current_x = 0;										// Posición horizontal del botón en el grid.
	var _current_y = 0;										// Posición vertical del botón en el grid.
	var _priority_vertical = ds_priority_create();			// Cola de prioridad con las posiciones en el eje horiontal.
	var _priority_horizontal = ds_priority_create();		// Cola de prioridad con las posiciones en el eje vertival.
	
	#region Colas de prioridad con las coordenadas ordenadas.
	
		for (var _i = 0; _i < _count_button; _i++) {
			var _button = instance_find(class_button, _i);
			
			if (_button.allow_gamepad_selection) {
				ds_priority_add(_priority_vertical, _button.id, _button.y);
				ds_priority_add(_priority_horizontal, _button.id, _button.x);
			}
		}
	
	#endregion
	#region Botones con las posiciones horizontales del grid.
	
		if (!ds_priority_empty(_priority_horizontal)) {
			var _left_button = ds_priority_delete_min(_priority_horizontal);
			
			_left_button.grid_x = _current_x;
			while (!ds_priority_empty(_priority_horizontal)) {
				var _next_button = ds_priority_delete_min(_priority_horizontal);
				
				if (abs(_next_button.x-_left_button.x) > grid_button_size) {
					_current_x++;
				}
				_next_button.grid_x = _current_x;
				_left_button = _next_button;
			}
		}
		ds_priority_destroy(_priority_horizontal);
	
	#endregion
	#region Botones con las posiciones verticales del grid.
	
		if (!ds_priority_empty(_priority_vertical)) {
			var _top_button = ds_priority_delete_min(_priority_vertical);
			
			_top_button.grid_y = _current_y;
			while (!ds_priority_empty(_priority_vertical)) {
				var _next_button = ds_priority_delete_min(_priority_vertical);
			
				if (abs(_next_button.y-_top_button.y) > grid_button_size) {
					_current_y++;
				}
				_next_button.grid_y = _current_y;
				_top_button = _next_button;
			}
		}
		ds_priority_destroy(_priority_vertical);
		
	#endregion
	#region Grid con los botones.
	
		grid_button = ds_grid_create(_current_x+1, _current_y+1);
		for (var _i = 0; _i < _count_button; _i++) {
			var _button = instance_find(class_button, _i);
			
			ds_grid_set(grid_button, _button.grid_x, _button.grid_y, _button);
		}
		
	#endregion
}