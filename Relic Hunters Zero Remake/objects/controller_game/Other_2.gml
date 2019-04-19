/// @description Start game

game_set_speed(60, gamespeed_fps);
window_set_min_width(base_width);
window_set_min_height(base_height);
window_set_cursor(cr_none);
randomize();
options_load();

#region Gamepad.

	if (gamepad_is_connected(gamepad)) {
		gamepad_set_axis_deadzone(gamepad, 0.3);
		gamepad_set_button_threshold(gamepad, 0.3);
	}

#endregion
#region Sound.

	audio_group_load(audiogroup_default);
	audio_group_load(ag_sound);
	
#endregion