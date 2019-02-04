/// @description Variables

player = instance_find(class_player, 0);

#region Health.
	
	face_x = 16;
	face_y = 16;
	health_bar_x = 68;
	health_bar_y = 20;
	health_bar_width = 108;
	health_bar_height = 24;
	health_text_x = health_bar_x+health_bar_width;
	health_text_y = health_bar_y+8;

#endregion
#region Shield.

	shield_bar_x = 64;
	shield_bar_y = 36;
	shield_bar_width = 96;
	shield_bar_height = 16;
	shield_text_x = shield_bar_x+shield_bar_width;
	shield_text_y = shield_bar_y+8;

#endregion
#region Stamina.

	stamina_bar_x = 64;
	stamina_bar_y = 56;
	stamina_bar_width = 96;
	stamina_bar_height = 4;
	stamina_border = 1;

#endregion