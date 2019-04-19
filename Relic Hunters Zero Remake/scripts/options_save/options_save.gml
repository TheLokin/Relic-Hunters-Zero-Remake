/*
 *	options_save()
 *
 *	Save the game options in a file.
 *
 *	Return: N/A.
 */

ini_open(file_options);

#region Language.
	
	ini_write_real("language", "language" , global.language);
	
#endregion
#region Volume.
	
	ini_write_real("volume", "master", global.volume_master);
	ini_write_real("volume", "sound", global.volume_sound);
	ini_write_real("volume", "music", global.volume_music);

#endregion
#region Window.

	ini_write_real("window", "fullscreen", global.fullscreen);
	ini_write_real("window", "resolution", global.resolution);
	ini_write_real("window", "vsync", global.vsync);
	
#endregion
#region Gameplay.

	ini_write_real("gameplay", "double_tap", global.double_tap);

#endregion
#region Keyboard mapping.
	
	ini_write_real("mapping", "keyboard_up", global.keyboard_up);
	ini_write_real("mapping", "keyboard_down", global.keyboard_down);
	ini_write_real("mapping", "keyboard_left", global.keyboard_left);
	ini_write_real("mapping", "keyboard_right", global.keyboard_right);
	ini_write_real("mapping", "mouse_confirm", global.mouse_confirm);
	ini_write_real("mapping", "keyboard_confirm", global.keyboard_confirm);
	ini_write_real("mapping", "keyboard_cancel", global.keyboard_cancel);
	ini_write_real("mapping", "keyboard_sprint", global.keyboard_sprint);
	ini_write_real("mapping", "keyboard_dash", global.keyboard_dash);
	ini_write_real("mapping", "keyboard_interaction", global.keyboard_interaction);
	ini_write_real("mapping", "mouse_shot", global.mouse_shot);
	ini_write_real("mapping", "mouse_aim", global.mouse_aim);
	ini_write_real("mapping", "keyboard_reload", global.keyboard_reload);
	ini_write_real("mapping", "keyboard_switch", global.keyboard_switch);
	ini_write_real("mapping", "keyboard_grenade", global.keyboard_grenade);
		
#endregion
#region Gamepad mapping.
	
	ini_write_real("mapping", "gamepad_up", global.gamepad_up);
	ini_write_real("mapping", "gamepad_down", global.gamepad_down);
	ini_write_real("mapping", "gamepad_left", global.gamepad_left);
	ini_write_real("mapping", "gamepad_right", global.gamepad_right);
	ini_write_real("mapping", "gamepad_confirm", global.gamepad_confirm);
	ini_write_real("mapping", "gamepad_cancel", global.gamepad_cancel);
	ini_write_real("mapping", "gamepad_sprint", global.gamepad_sprint);
	ini_write_real("mapping", "gamepad_dash", global.gamepad_dash);
	ini_write_real("mapping", "gamepad_interaction", global.gamepad_interaction);
	ini_write_real("mapping", "gamepad_shot", global.gamepad_shot);
	ini_write_real("mapping", "gamepad_aim", global.gamepad_aim);
	ini_write_real("mapping", "gamepad_reload", global.gamepad_reload);
	ini_write_real("mapping", "gamepad_switch", global.gamepad_switch);
	ini_write_real("mapping", "gamepad_grenade", global.gamepad_grenade);
	
#endregion

ini_close();