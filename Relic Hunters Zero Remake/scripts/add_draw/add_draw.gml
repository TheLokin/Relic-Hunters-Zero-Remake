/*
 *	add_draw(instance)
 *
 *	Add the instance to draw in the depth system.
 *
 *	instance: the instance to draw.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params instance
	var _instance = argument0;

#endregion

var _grid = ds_grid_create(2, 1);

ds_grid_set(_grid, 0, 0, _instance);
ds_grid_set(_grid, 1, 0, 0);

if (controller_game.grid_depth == noone) {
	var _height = 0;
	
	controller_game.grid_depth = ds_grid_create(2, 1);
} else {
	var _height = ds_grid_height(controller_game.grid_depth);
	
	ds_grid_resize(controller_game.grid_depth, 2, _height+1);
}
ds_grid_set(controller_game.grid_depth, 0, _height, _instance);
ds_grid_set(controller_game.grid_depth, 1, _height, _grid);