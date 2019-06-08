/// @description Variables

#region Information.

	global.player1 = instance_create_layer(224, 192, "interactive", player_ace);		// Player one.
	
#endregion
#region Text.

	font = get_font(ft_medium);		// Text font.

#endregion
#region Health.
	
	face_x = 16;						// Position on the horizontal axis of the player's face.
	face_y = 16;						// Position on the vertical axis of the player's face.
	health_target = 0;					// Health target to fill.
	health_delayed = 0;					// Health position filling the second bar.
	health_bar_speed = 0.008;			// Speed filling the health bar.
	health_bar_duration = 600000;		// Duration in milliseconds after filling the first bar of the health bar.
	is_filling_health_bar = false;		// If the health bar is filling.
	current_health_bar_time = 0;		// Milliseconds since the health bar was filled.
	health_bar_x = 72;					// Position on the horizontal axis of the health bar.
	health_bar_y = 16;					// Position on the vertical axis of the health bar.
	health_bar_width = 100;				// Width of the health bar.
	health_bar_height = 29;				// Height of the health bar.
	health_bar_border = 2;				// Border of the health bar.
	health_text_x = 170;				// Position on the horizontal axis of the text with the health.
	health_text_y = 26;					// Position on the vertical axis of the text with the health.

#endregion
#region Shield.

	shield_target = 0;					// Shield target to fill.
	shield_delayed = 0;					// Shield position filling the second bar.
	shield_bar_speed = 0.008;			// Speed filling the shield bar.
	shield_bar_duration = 600000;		// Duration in milliseconds after filling the first bar of the shield bar.
	is_filling_shield_bar = false;		// If the shield bar is filling.
	current_shield_bar_time = 0;		// Milliseconds since the shield bar was filled.
	shield_bar_x = 64;					// Position on the horizontal axis of the shield bar.
	shield_bar_y = 36;					// Position on the vertical axis of the shield bar.
	shield_bar_width = 100;				// Width of the shield bar.
	shield_bar_height = 19;				// Height of the shield bar.
	shield_bar_border = 2;				// Border of the shield bar.
	shield_text_x = 162;				// Position on the horizontal axis of the text with the shield.
	shield_text_y = 46;					// Position on the vertical axis of the text with the shield.

#endregion
#region Stamina.

	stamina_bar_x = 64;				// Position on the horizontal axis of the stamina bar.
	stamina_bar_y = 60;				// Position on the vertical axis of the stamina bar.
	stamina_bar_width = 100;		// Width of the stamina bar.
	stamina_bar_height = 4;			// Height of the stamina bar.
	stamina_bar_border = 2;			// Border of the stamina bar.
	
#endregion
#region Weapons.

	weapon_selected_x = 16;
	weapon_selected_y = base_height-32;
	weapon_back_x = 16;
	weapon_back_y = base_height-16;
	weapon_bar_border = 2;						// Border of the weapon bar.

#endregion
#region Dig spot.

	dirt_color = c_magenta;

#endregion
#region Depth system.

	queue_depth = ds_priority_create();
	
#endregion