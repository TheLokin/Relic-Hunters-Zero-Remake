/// @description Actions

if (is_fading) {
	if (alpha > 0) {
		alpha -= alpha_speed;
	} else {
		instance_destroy();
	}
}