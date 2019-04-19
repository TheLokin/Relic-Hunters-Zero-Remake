/// @description Actions

if (height != height_max) {
	vertical_speed += gravity_fake;
	height += vertical_speed*delta_time*ms_to_s_60;
	height = min(height, height_max);
} else {
	horizontal_speed *= 0.8;
}
horizontal_speed = max(0, horizontal_speed-(speed_friction*delta_time*ms_to_s_60));
speed = horizontal_speed*delta_time*ms_to_s_60;
if (speed != 0) {
	image_angle += angular_speed*delta_time*ms_to_s_60;
} else {
	current_destroy_time += delta_time;
	if (current_destroy_time >= destroy_delay) {
		instance_destroy();
	}
}