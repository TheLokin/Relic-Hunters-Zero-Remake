/*
 *	ds_grid_delete_row(grid, row)
 *
 *	Deletes the row in the given grid and resizes the grid appropriately.
 *
 *	grid: the grid to resize.
 *	row: the row to delete.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params grid
	var _grid = argument0;
	/// @params row
	var _row = argument1;

#endregion

var _width = ds_grid_width(_grid);
var _height = ds_grid_height(_grid);

ds_grid_set_grid_region(_grid, _grid, 0, _row+1, _width-1, _height-1, 0, _row);
ds_grid_resize(_grid, _width, _height-1);