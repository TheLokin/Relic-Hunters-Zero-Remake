/// @description Variables

event_inherited();

#region Actions.

	button_above = button_fullscreen;		// Button above.
	button_below = button_vsync;			// Button below.
	button_left = arrow_left;				// Button left.
	button_right = arrow_right;				// Button right.
	
#endregion
#region Options.

	option = global.resolution;						// Option selected.
	max_option = window_get_max_resolution();		// Maximum number of options.

#endregion
#region Text.

	language_key = "menu.window.resolution";																					// Key associated to the language.
	text = get_lang_value(language_key);																						// Text.
	text_secondary = string(controller_game.resolutions[option, 0])+" x "+string(controller_game.resolutions[option,1]);		// Secondary text.

#endregion