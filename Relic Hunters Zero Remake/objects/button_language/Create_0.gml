/// @description Variables

event_inherited();

#region Actions.
	
	button_above = button_confirm;		// Button above.
	button_below = button_master;		// Button below.
	button_left = arrow_left;			// Button left.
	button_right = arrow_right;			// Button right.
	
#endregion
#region Arrows.

	arrow_left.is_circular = true;		// Make circular the left arrow.
	arrow_right.is_circular = true;		// Make circular the right arrow.
	
#endregion
#region Options.

	option = global.language;				// Option selected.
	max_option = languages_count()-1;		// Maximum number of options.

#endregion
#region Text.
	
	language_key = "menu.language";				// Key associated to the language.
	text = get_lang_value(language_key);		// Text.
	text_secondary = get_lang_code(option);		// Secondary text.
	
#endregion