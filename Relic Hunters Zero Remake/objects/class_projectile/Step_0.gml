/// @description Actions

if (!global.pause) {
	if (projectile_speed > 5) {
		projectile_speed -= projectile_speed_decay;
	} else {
		projectile_speed = 5;
	}
	speed = projectile_speed*delta_time*ms_to_s_60;
	distance_travelled += speed;
	if (distance_travelled > max_range) {
		instance_destroy();
	}
}