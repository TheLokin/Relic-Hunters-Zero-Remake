/*
 *	delete_draw(instance)
 *
 *	Delete the instance from the depth system.
 *
 *	instance: the instance to stop to draw.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params instance
	var _instance = argument0;

#endregion

for (var _y = 0; _y < ds_grid_height(controller_game.grid_depth); _y++) {
	if (_instance == ds_grid_get(controller_game.grid_depth, 0, _y)) {
		ds_grid_destroy(ds_grid_get(controller_game.grid_depth, 1, _y));
		ds_grid_delete_row(controller_game.grid_depth, _y);
		return;
	}
}