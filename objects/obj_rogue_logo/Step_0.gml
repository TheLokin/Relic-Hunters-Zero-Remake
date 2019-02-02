/// @description Acciones

if (visible) {
	current_alpha = clamp(current_alpha+alpha_speed, 0, 1);
	switch (current_alpha) {
		case 0:
			instance_destroy();
		break;
		case 1:
			if (!is_logo_show) {
				is_logo_show = true;
				audio_play_sound(sfx_logo_rogue, 1, false);
				alarm[0] = logo_time;
			}
		break;
	}
}