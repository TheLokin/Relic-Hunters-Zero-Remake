/// @description Close game

if (ds_exists(map_languages, ds_type_map)) {
	ds_map_destroy(map_languages);
}
if (ds_exists(grid_depth, ds_type_grid)) {
	for (var _y = 0; _y < ds_grid_height(grid_depth); _y++) {
		var _grid = ds_grid_get(grid_depth, 1, _y);
		
		for (var _yy = 0; _yy < ds_grid_height(_grid); _yy++) {
			var _instance = ds_grid_get(_grid, 0, _grid);
			
			if (instance_exists(_instance)) {
				instance_destroy(_instance);
			}
		}
		ds_grid_destroy(_grid);
	}
	ds_grid_destroy(grid_depth);
}
options_save();