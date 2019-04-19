/// @description Variables

event_inherited();

#region Actions.

	switch (room) {
		case rm_menu2:
			button_above = button_credits;			// Button above.
			button_below = button_language;			// Button below.
		break;
		case rm_menu3:
			button_above = button_vsync;			// Button above.
			button_below = button_fullscreen;		// Button below.
		break;
		case rm_menu4:
			button_above = button_double_tap;		// Button above.
			button_below = button_double_tap;		// Button below.
		break;
	}
	
#endregion
#region Displacement.

	move_speed = 3;		// Speed at which the button moves.
	final_y -= 8;		// Final position on the vertical axis of the button.
	
#endregion
#region Icon.

	icon_x = sprite_get_width(sprite_index)/2;		// Position on the horizontal axis of the icon.
	icon_y = 0;										// Position on the vertical axis of the icon.

#endregion
#region Text.

	font_key = ft_medium;								// Key associated to the font.
	font = get_font(font_key);							// Text font.
	text_x = sprite_get_width(sprite_index)/2;			// Position on the horizontal axis of the text.
	text_y = (sprite_get_height(sprite_index)-8)/2;		// Position on the vertical axis of the text.
	
#endregion