/// @description Free up memory

if (ds_exists(grid_button, ds_type_grid)) {
	ds_grid_destroy(grid_button);
}