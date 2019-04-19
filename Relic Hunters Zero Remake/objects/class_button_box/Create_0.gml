/// @description Variables

event_inherited();

#region Icon.

	icon_x = x;											// Position on the horizontal axis of the icon.
	icon_y = y+sprite_get_height(sprite_index)/2;		// Position on the vertical axis of the icon.

#endregion
#region Options.

	option = 0;			// Option selected.
	max_option = 0;		// Maximum number of options.
	
#endregion
#region Text.
	
	font_key = ft_medium;				// Key associated to the font.
	font = get_font(font_key);			// Text font.
	text_secondary = "unsigned";		// Secondary text.
	
#endregion