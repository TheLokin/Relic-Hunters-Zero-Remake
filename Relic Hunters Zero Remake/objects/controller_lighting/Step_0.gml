/// @description Actions

if (surface_exists(surface)) {
	surface_set_target(surface);
	
	draw_set_color(c_black);
	draw_set_alpha(0.9);
	draw_rectangle(0, 0, room_width, room_height, false);
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_black);
	draw_set_alpha(0.9);
	with (class_player) {
		draw_circle(object_get_xcenter(id)+random_range(-2, 2), object_get_ycenter(id)+random_range(-2, 2), 120+random_range(-1, 1), false);
	}
	with (class_enemy) {
		draw_circle(object_get_xcenter(id)+random_range(-2, 2), object_get_ycenter(id)+random_range(-2, 2), 60+random_range(-1, 1), false);
	}
	draw_set_color(c_white);
	draw_set_alpha(1);
	with (class_player) {
		draw_circle(object_get_xcenter(id)+random_range(-2, 2), object_get_ycenter(id)+random_range(-2, 2), 25+random_range(-1, 1), false);
	}
	with (class_enemy) {
		draw_circle(object_get_xcenter(id)+random_range(-2, 2), object_get_ycenter(id)+random_range(-2, 2), 25+random_range(-1, 1), false);
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
} else {
	surface = surface_create(room_width, room_height);
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}