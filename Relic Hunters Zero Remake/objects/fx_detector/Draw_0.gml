/// @description Detector

if (current_radius < target_radius) {
	current_radius += radius_increment;
	draw_set_color(color);
	draw_rectangle(x-current_radius, y-current_radius, x+current_radius, y+current_radius, true);
} else {
	instance_destroy();
}