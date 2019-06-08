/// @description Depth system

for (var _y = 0; _y < ds_grid_height(controller_game.grid_depth); _y++) {
	ds_priority_add(queue_depth, ds_grid_get(controller_game.grid_depth, 1, _y), ds_grid_get(controller_game.grid_depth, 0, _y).y);
}
while (!ds_priority_empty(queue_depth)) {
	var _grid = ds_priority_delete_min(queue_depth);
	
	for (var _y = 0; _y < ds_grid_height(_grid); _y++) {
		with (ds_grid_get(_grid, 0, _y)) {
			event_perform(ev_draw, 0);
		}
	}
}