/// @description Variables

#region Actions.

	button_selected = noone;			// Button selected.
	allow_input = false;				// Allow interaction with the menu.
	input_delay = room_speed*0.2;		// Delay between interactions.
	alarm[0] = room_speed*0.5;			// Cooldown to allow interaction with the menu.
	is_changing = false;				// If the input to interact with the menu is changing.
	change_delay = room_speed*0.1;		// Delay when the input changes.
	
#endregion
#region Text.

	font = get_font(ft_small);					// Text font.
	text_x = display_get_gui_width()-10;		// Position on the horizontal axis of the text.
	text_y = 10;								// Position on the vertical axis of the text.
	text_border = 1;							// Border of the text.

#endregion
#region Sound.
	
	switch (room) {
		case rm_menu7:
			if (audio_is_playing(bgm_menu)) {
				audio_stop_sound(bgm_menu);
			}
			if (!audio_is_playing(bgm_credits)) {
				audio_play_sound(bgm_credits, pr_hight, true);
			}
		break;
		default:
			if (audio_is_playing(bgm_credits)) {
				audio_stop_sound(bgm_credits);
			}
			if (!audio_is_playing(bgm_menu)) {
				audio_play_sound(bgm_menu, pr_hight, true);
			}
		break;
	}

#endregion