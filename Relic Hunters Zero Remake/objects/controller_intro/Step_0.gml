/// @description Actions

if (visible) {
	current_alpha = clamp(current_alpha+alpha_speed, 0, 1);
	switch (current_alpha) {
		case 0:
			room_goto(rm_menu1);
			instance_destroy();
		break;
		case 1:
			if (!is_logo_show) {
				is_logo_show = true;
				audio_play_sound(sfx_rogue, pr_hight, false);
				alarm[0] = logo_duration;
			}
		break;
	}
} else if (audio_group_is_loaded(audiogroup_default) && audio_group_is_loaded(ag_sound)) {
	visible = true;
}