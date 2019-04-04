/// @function get_above_button()
/// @description Devuelve el botón superior a uno dado en una room o el botón pasado si no tiene.
/// @param grid
/// @param button
/// @return button

#region Parámetros.

	var _grid = argument0;			// Grid con los botones.
	var _button = argument1;		// Botón.

#endregion

var _width = ds_grid_width(_grid);		// Anchura del grid.

#region Recorrido vertical.
	
	for (var _i = _button.grid_y-1; _i >= 0; _i--) {
		var _candidate = ds_grid_get(_grid, _button.grid_x, _i);
		
		if (_candidate != 0 && instance_exists(_candidate)) {
			return _candidate;
		}
	}
						
#endregion
#region Recorrido oblícuo.

	for (var _y = _button.grid_y-1; _y >= 0; _y--) {
		for (var _i = 1; _i < _width; _i++) {
			// Hacia la derecha.
			var _x = _button.grid_x+_i;
			
			if (_x < _width) {
				var _candidate = ds_grid_get(_grid, _x, _y);			
				
				if (_candidate != 0 && instance_exists(_candidate)) {
					return _candidate;
				}
			}
			
			// Hacia la izquierda.
			var _x = _button.grid_x-_i;
			
			if (_x >= 0) {
				var _candidate = ds_grid_get(_grid, _x, _y);
				
				if (_candidate != 0 && instance_exists(_candidate)) {
					return _candidate;
				}
			}
		}
	}
					
#endregion

return _button;