/// @description Free up memory

if (ds_exists(grid_depth, ds_type_grid)) {
	ds_map_destroy(grid_depth);
}
global.player1 = noone;