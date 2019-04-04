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
#region Opciones de vídeo.

	ini_write_real("video", "resolution", controller_game.option_resolution);		// Resolución.
	ini_write_real("video", "fullscreen", controller_game.option_fullscreen);		// Pantalla completa.
	
#endregion
#region Volume.
	
	ini_write_real("volume", "master", global.volume_master);
	ini_write_real("volume", "sound", global.volume_sound);
	ini_write_real("volume", "music", global.volume_music);

#endregion
#region Keyboard mapping.

	ini_write_real("mapping", "keyboard_up1", global.keyboard_up1);
	ini_write_real("mapping", "keyboard_up2", global.keyboard_up2);
	ini_write_real("mapping", "keyboard_down1", global.keyboard_down1);
	ini_write_real("mapping", "keyboard_down2", global.keyboard_down2);
	ini_write_real("mapping", "keyboard_left1", global.keyboard_left1);
	ini_write_real("mapping", "keyboard_left2", global.keyboard_left2);
	ini_write_real("mapping", "keyboard_right1", global.keyboard_right1);
	ini_write_real("mapping", "keyboard_right2", global.keyboard_right2);
	ini_write_real("mapping", "keyboard_sprint", global.keyboard_sprint);
	ini_write_real("mapping", "keyboard_dash", global.keyboard_dash);
	ini_write_real("mapping", "keyboard_interaction", global.keyboard_interaction);
	ini_write_real("mapping", "keyboard_shot", global.keyboard_shot);
	ini_write_real("mapping", "keyboard_aim", global.keyboard_aim);
	ini_write_real("mapping", "keyboard_reload", global.keyboard_reload);
	ini_write_real("mapping", "keyboard_switch", global.keyboard_switch);
	ini_write_real("mapping", "keyboard_grenade", global.keyboard_grenade);
	
#endregion
#region Gamepad mapping.

	ini_write_real("mapping", "gamepad_sprint1", global.gamepad_sprint1);
	ini_write_real("mapping", "gamepad_sprint2", global.gamepad_sprint2);
	ini_write_real("mapping", "gamepad_dash", global.gamepad_dash);
	ini_write_real("mapping", "gamepad_interaction", global.gamepad_interaction);
	ini_write_real("mapping", "gamepad_shot", global.gamepad_shot);
	ini_write_real("mapping", "gamepad_aim", global.gamepad_aim);
	ini_write_real("mapping", "gamepad_reload", global.gamepad_reload);
	ini_write_real("mapping", "gamepad_switch", global.gamepad_switch);
	ini_write_real("mapping", "gamepad_grenade", global.gamepad_grenade);

#endregion

ini_close();