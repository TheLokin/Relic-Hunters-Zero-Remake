/// @description Free up memory

if (ds_exists(queue_depth, ds_type_priority)) {
	ds_priority_destroy(queue_depth);
}
global.player1 = noone;