/// @description Variables

event_inherited();

#region Displacement.
	
	distance = 32;				// Speed at which the button moves.
	final_y += distance;		// Final position on the vertical axis of the button.
	
#endregion
#region Icon.
	
	icon_scale_start = 1.8;										// Initial scale of the icon.
	icon_scale_final = 1.3;										// Final scale of the icon.
	icon_scale = icon_scale_start;								// Scale of the icon.
	icon_x = sprite_get_width(sprite_index)-16-distance;		// Position on the horizontal axis of the icon.
	icon_y = sprite_get_height(sprite_index)/2;					// Position on the vertical axis of the icon.

#endregion
#region Text.

	font_key = ft_large;							// Key associated to the font.
	font = get_font(font_key);						// Text font.
	text_x = x > 0 ? distance : distance-x;			// Position on the horizontal axis of the text.
	text_y = sprite_get_height(sprite_index)/2;		// Position on the vertical axis of the text.

#endregion