/// @description Variables

event_inherited();

#region Actions.

	if (instance_exists(button_confirm)) {
		button_left = button_confirm;		// Button left.
		button_right = button_confirm;		// Button right.
	}
	
#endregion
#region Text.
	
	language_key = "menu.cancel";				// Key associated to the language.
	text = get_lang_value(language_key);		// Text.
	
#endregion