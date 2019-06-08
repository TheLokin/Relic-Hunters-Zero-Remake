/*
 *	link_draw(index, instance, priority)
 *
 *	Link the instance to the index with the drawing priority
 *	so that it will be draw with that.
 *
 *	index: the index to which it will be linked.
 *	instance: the instance to link.
 *	priority: the priority of drawing.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params index
	var _index = argument0;
	/// @params instance
	var _instance = argument1;
	/// @params priority
	var _priority = argument2;

#endregion

for (var _y = 0; _y < ds_grid_height(controller_game.grid_depth); _y++) {
	if (_index == ds_grid_get(controller_game.grid_depth, 0, _y)) {
		var _grid = ds_grid_get(controller_game.grid_depth, 1, _y);
		var _height = ds_grid_height(_grid);
		
		for (_y = 0; _y < _height; _y++) {
			if (_instance == ds_grid_get(_grid, 0, _y)) {
				ds_grid_set(_grid, 1, _height, _priority);
				return;
			}
		}
		ds_grid_resize(_grid, 2, _height+1);
		ds_grid_set(_grid, 0, _height, _instance);
		ds_grid_set(_grid, 1, _height, _priority);
		ds_grid_sort(_grid, 1, true);
		return;
	}
}