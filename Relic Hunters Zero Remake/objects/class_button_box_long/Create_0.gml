/// @description Variables

event_inherited();

#region Arrows.

	arrow_left = instance_create_layer(x+sprite_get_width(sprite_index)-144, y, "buttons", button_arrow);		// Left arrow.
	arrow_left.image_xscale = -1;																				// Orientation of the left arrow.
	arrow_left.depth = depth-1;																					// Depth correction for the left arrow.
	arrow_left.owner = id;																						// The owner of the left arrow.
	arrow_right = instance_create_layer(x+sprite_get_width(sprite_index)-8, y, "buttons", button_arrow);		// Right arrow.
	arrow_right.image_xscale = 1;																				// Orientation of the right arrow.
	arrow_right.depth = depth-1;																				// Depth correction for the right arrow.
	arrow_right.owner = id;																						// The owner of the right arrow.
	
#endregion
#region Text.

	text_x = x+sprite_get_width(sprite_index)-160;				// Position on the horizontal axis of the text.
	text_y = y+sprite_get_height(sprite_index)/2;				// Position on the vertical axis of the text.
	text_secondary_x = x+sprite_get_width(sprite_index)-76;		// Position on the horizontal axis of the secondary text.
	text_secondary_y = y+sprite_get_height(sprite_index)/2;		// Position on the vertical axis of the secondary text.
	
#endregion