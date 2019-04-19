/// @description Variables

event_inherited();

#region Actions.

	button_above = noone;		// Button above.
	button_below = noone;		// Button below.
	button_left = noone;		// Button left.
	button_right = noone;		// Button right.
	is_avaliable = true;		// Button available.
	is_selected = false;		// Button selected.
	execute_action = false;		// Execute button action.
	
#endregion
#region Icon.

	icon_scale_start = 1.5;				// Initial scale of the icon.
	icon_scale_final = 1;				// Final scale of the icon.
	icon_scale = icon_scale_start;		// Scale of the icon.
	icon_scale_speed = 0.025;			// Speed at which the icon scales.

#endregion
#region Sound.

	is_selected_play = false;		// Sound played when the button is selected.
	is_clicked_play = false;		// Sound played when the button is clicked.
	
#endregion