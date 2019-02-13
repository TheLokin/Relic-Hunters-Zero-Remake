/// @description Variables

global.player.hp = 0;
global.player.energy = 0;

#region Bar.

	bar_speed = 0.008;			// Speed filling the bar.
	bar_duration = 600000;		// Duration in milliseconds after filling the first bar.

#endregion
#region Health.
	
	face_x = 16;						// Position on the horizontal axis of the player's face.
	face_y = 16;						// Position on the vertical axis of the player's face.
	health_target = 0;					// Health target to fill.
	health_delayed = 0;					// Health position filling the second bar.
	is_filling_health_bar = false;		// If the health bar is filling.
	current_health_bar_time = 0;		// Milliseconds since the health bar was filled.
	health_bar_x = 72;					// Position on the horizontal axis of the health bar.
	health_bar_y = 20;					// Position on the vertical axis of the health bar.
	health_bar_width = 100;				// Width of the health bar.
	health_bar_height = 29;				// Height of the health bar.
	health_bar_border = 2;				// Border of the health bar.
	health_text_x = health_bar_x+health_bar_width-health_bar_border;				// Position on the horizontal axis of the text with the health.
	health_text_y = health_bar_y+10;					// Position on the vertical axis of the text with the health.

#endregion
#region Shield.

	shield_target = 0;					// Shield target to fill.
	shield_delayed = 0;					// Shield position filling the second bar.
	is_filling_shield_bar = false;		// If the shield bar is filling.
	current_shield_bar_time = 0;		// Milliseconds since the shield bar was filled.
	shield_bar_x = 64;					// Position on the horizontal axis of the shield bar.
	shield_bar_y = 40;					// Position on the vertical axis of the shield bar.
	shield_bar_width = 100;				// Width of the shield bar.
	shield_bar_height = 19;				// Height of the shield bar.
	shield_bar_border = 2;				// Border of the shield bar.
	shield_text_x = shield_bar_x+shield_bar_width-shield_bar_border;				// Position on the horizontal axis of the text with the shield.
	shield_text_y = shield_bar_y+10;					// Position on the vertical axis of the text with the shield.

#endregion
#region Stamina.

	stamina_bar_x = 64;
	stamina_bar_y = 64;
	stamina_bar_width = 96;
	stamina_bar_height = 4;
	stamina_bar_border = 1;

#endregion
#region Weapons.

	weapon_border = 2;
	weapon_selected_x = 16;
	weapon_selected_y = base_height-16;
	weapon_back_x = 0;
	weapon_back_y = base_height-16;

#endregion