/// @description Variables

event_inherited();

#region Actions.

	button_above = button_confirm;		// Button above.
	button_below = button_confirm;		// Button below.
	button_left = arrow_left;			// Button left.
	button_right = arrow_right;			// Button right.
	
#endregion
#region Arrows.

	arrow_left.is_circular = true;		// Make circular the left arrow.
	arrow_right.is_circular = true;		// Make circular the right arrow.
	
#endregion
#region Options.

	option = global.double_tap;		// Option selected.
	max_option = 1;					// Maximum number of options.

#endregion
#region Text.

	language_key = "menu.gameplay.double_tap";								// Key associated to the language.
	text = get_lang_value(language_key);									// Text.
	language_key_secondary = "menu.gameplay.double_tap.options";			// Key secondary associated to the language.
	text_secondary = get_lang_value(language_key_secondary, option);		// Secondary text.

#endregion