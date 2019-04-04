/// @function get_right_button()
/// @description Devuelve el botón a la derecha a uno dado en una room o el pasado si no tiene.
/// @param grid
/// @param button
/// @return button

#region Parámetros.

	var _grid = argument0;			// Grid con los botones.
	var _button = argument1;		// Botón.

#endregion

var _height = ds_grid_height(_grid);		// Altura del grid.
var _width = ds_grid_width(_grid);			// Anchura del grid.

#region Recorrido horizontal.

	for (var _i = _button.grid_x+1; _i < _width; _i++) {
		var _candidate = ds_grid_get(_grid, _i, _button.grid_y);
		
		if (_candidate != 0 && instance_exists(_candidate)) {
			return _candidate;
		}
	}

#endregion
#region Recorrido oblícuo.

	for (var _x = _button.grid_x+1; _x < _width; _x++) {
		for (var _i = 1; _i < _height; _i++) {
			// Hacia abajo.
			var _y = _button.grid_y+_i;
			
			if (_y < _height) {
				var _candidate = ds_grid_get(_grid, _x, _y);
				
				if (_candidate != 0 && instance_exists(_candidate)) {
					return _candidate;
				}
			}
			
			// Hacia arriba.
			var _y = _button.grid_y-_i;
			
			if (_y >= 0) {
				var _candidate = ds_grid_get(_grid, _x, _y);
				
				if (_candidate != 0 && instance_exists(_candidate)) {
					return _candidate;
				}
			}
		}
	}
					
#endregion

return _button;