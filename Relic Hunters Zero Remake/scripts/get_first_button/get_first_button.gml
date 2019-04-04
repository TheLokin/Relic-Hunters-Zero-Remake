/// @function get_first_button()
/// @description Devuelve el primer botón de una room, el más arriba a la izquierda, o noone si no existen botones.
/// @param grid
/// @return button

#region Parámetros.

	var _grid = argument0;		// Grid con los botones.

#endregion

if (ds_exists(_grid, ds_type_grid)) {
	for (var _y = 0; _y < ds_grid_height(_grid); _y++) {
		for (var _x = 0; _x < ds_grid_width(_grid); _x++) {
			var _candidate = ds_grid_get(_grid, _x, _y);
	
			if (_candidate != 0 && instance_exists(_candidate)) {
				return _candidate;
			}
		}
	}
}

return noone;