/// @description Variables

event_inherited();

#region Text.

	font_key = ft_large;								// Key associated to the font.
	font = get_font(font_key);							// Text font.
	language_key = "menu.label.options";				// Key associated to the language.
	text = get_lang_value(language_key);				// Text.
	text_x = x+24;										// Position on the horizontal axis of the text.
	text_y = y+sprite_get_height(sprite_index)/2;		// Position on the vertical axis of the text.
	
#endregion