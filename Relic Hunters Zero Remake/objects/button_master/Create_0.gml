/// @description Variables

event_inherited();

#region Actions.

	button_above = button_language;		// Button above.
	button_below = button_sound;		// Button below.
	button_left = arrow_left;			// Button left.
	button_right = arrow_right;			// Button right.
	
#endregion
#region Options.

	option = global.volume_master;		// Option selected.
	max_option = 10;					// Maximum number of options.

#endregion
#region Text.

	language_key = "menu.volume.master";		// Key associated to the language.
	text = get_lang_value(language_key);		// Text.
	text_secondary = string(option);			// Secondary text.

#endregion