/// @description Variables

#region Information.

	owner = noone;		// The owner of the dynamic bar.

#endregion
#region Bar.
	
	alpha = 0;					//
	alpha_speed = 0.025;		//
	interval_duration = room_speed;
	bar_width = 32;				// Width of the bar.
	bar_height = 2;				// Height of the bar.
	bar_border = 1;				// Border of the bar.

#endregion
#region Shield.
	
	draw_shield = false;				//
	shield_target = 0;					// Shield target to fill.
	shield_delayed = 0;					// Shield position filling the second bar.
	shield_bar_speed = 0.012;			// Speed filling the shield bar.
	shield_bar_duration = 600000;		// Duration in milliseconds after filling the first bar of the shield bar.
	is_filling_shield_bar = false;		// If the shield bar is filling.
	current_shield_bar_time = 0;		// Milliseconds since the shield bar was filled.
	
#endregion
#region Health.
	
	draw_health = false;				//
	health_target = 0;					// Health target to fill.
	health_delayed = 0;					// Health position filling the second bar.
	health_bar_speed = 0.012;			// Speed filling the health bar.
	health_bar_duration = 600000;		// Duration in milliseconds after filling the first bar of the health bar.
	is_filling_health_bar = false;		// If the health bar is filling.
	current_health_bar_time = 0;		// Milliseconds since the health bar was filled.
	
#endregion