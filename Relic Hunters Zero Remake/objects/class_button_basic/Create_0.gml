/// @description Variables

event_inherited();

#region Icon.

	icon_x = x+sprite_get_width(sprite_index)-12;		// Position on the horizontal axis of the icon.
	icon_y = y+sprite_get_height(sprite_index)/2;		// Position on the vertical axis of the icon.

#endregion
#region Text.

	font_key = ft_medium;								// Key associated to the font.
	font = get_font(font_key);							// Text font.
	text_x = x+48;										// Position on the horizontal axis of the text.
	text_y = y+sprite_get_height(sprite_index)/2;		// Position on the vertical axis of the text.

#endregion