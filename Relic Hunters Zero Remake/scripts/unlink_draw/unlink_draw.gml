/*
 *	unlink_draw(index, instance)
 *
 *	Unlink the instance from the index so that it won't be draw.
 *
 *	index: the index to which it will be unlinked.
 *	instance: the instance to unlink.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params index
	var _index = argument0;
	/// @params instance
	var _instance = argument1;

#endregion

for (var _y = 0; _y < ds_grid_height(controller_game.grid_depth); _y++) {
	if (_index == ds_grid_get(controller_game.grid_depth, 0, _y)) {
		var _grid = ds_grid_get(controller_game.grid_depth, 1, _y);
		
		for (_y = 0; _y < ds_grid_height(_grid); _y++) {
			if (_instance == ds_grid_get(_grid, 0, _y)) {
				ds_grid_delete_row(_grid, _y);
				return;
			}
		}
		return;
	}
}