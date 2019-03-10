/// @function options_load()
/// @description Carga del fichero "file_options" las opciones del juego.
/// @return void

ini_open(file_options);

#region Language.

	controller_game.option_language = ini_read_string("language", "language" , "EN");
	if (directory_exists(dir_lang)) {
		var _filename = filename_name(file_find_first(dir_lang+"*.json", 0));
		var _option = 0;
		
		while (_filename != "") {
			controller_game.language_id[_option, 0] = string_copy(_filename, string_pos("_", _filename)+1, 2);
			controller_game.language_id[_option, 1] = dir_lang + _filename;
			if (controller_game.option_language == controller_game.language_id[_option, 0]) {
				language_update(controller_game.language_id[_option, 1]);
				controller_game.option_language = _option;
			}
			_filename = filename_name(file_find_next());
			_option++;
		}
		file_find_close();
	}
	if (is_string(controller_game.option_language)) {
		controller_game.option_language = noone;
	}
	
#endregion
#region Opciones de vídeo.
	
	#region Resolución.
	
		controller_game.option_resolution = round(ini_read_real("video", "resolution", noone));
		if (controller_game.option_resolution == noone || controller_game.option_resolution < 0 || controller_game.option_resolution > 8) {
			controller_game.option_resolution = resolution_get_default();
		}
	
	#endregion
	#region Pantalla completa.
	
		controller_game.option_fullscreen = round(ini_read_real("video", "fullscreen", 0));
		if (controller_game.option_fullscreen != 0 && controller_game.option_fullscreen != 1) {
			controller_game.option_fullscreen = 0;
		}
		resolution_switch(controller_game.option_fullscreen);

	#endregion
	
#endregion
#region Volume master.
	
	global.volume_master = round(ini_read_real("volume", "master", global.volume_master));
	if (global.volume_master > 10) {
		global.volume_master = 10;
	} else if (global.volume_master < 0) {
		global.volume_master = 0;
	}
	master_update(global.volume_master);
	
#endregion
#region Volume sound.
	
	global.volume_sound = round(ini_read_real("volume", "sound", global.volume_sound));
	if (global.volume_sound > 10) {
		global.volume_sound = 10;
	} else if (global.volume_sound < 0) {
		global.volume_sound = 0;
	}
	sound_update(global.volume_sound);
	
#endregion
#region Volume music.
	
	global.volume_music = round(ini_read_real("volume", "music", global.volume_music));
	if (global.volume_music > 10) {
		global.volume_music = 10;
	} else if (global.volume_music < 0) {
		global.volume_music = 0;
	}
	music_update(global.volume_music);
	
#endregion
#region Keyboard mapping.
	
	global.keyboard_up1 = round(ini_read_real("mapping", "keyboard_up1", global.keyboard_up1));
	global.keyboard_up2 = round(ini_read_real("mapping", "keyboard_up2", global.keyboard_up2));
	global.keyboard_down1 = round(ini_read_real("mapping", "keyboard_down1", global.keyboard_down1));
	global.keyboard_down2 = round(ini_read_real("mapping", "keyboard_down2", global.keyboard_down2));
	global.keyboard_left1 = round(ini_read_real("mapping", "keyboard_left1", global.keyboard_left1));
	global.keyboard_left2 = round(ini_read_real("mapping", "keyboard_left2", global.keyboard_left2));
	global.keyboard_right1 = round(ini_read_real("mapping", "keyboard_right1", global.keyboard_right1));
	global.keyboard_right2 = round(ini_read_real("mapping", "keyboard_right2", global.keyboard_right2));
	global.keyboard_sprint = round(ini_read_real("mapping", "keyboard_sprint", global.keyboard_sprint));
	global.keyboard_dash = round(ini_read_real("mapping", "keyboard_dash", global.keyboard_dash));
	global.keyboard_interaction = round(ini_read_real("mapping", "keyboard_interaction", global.keyboard_interaction));
	global.keyboard_shot = round(ini_read_real("mapping", "keyboard_shot", global.keyboard_shot));
	global.keyboard_aim = round(ini_read_real("mapping", "keyboard_aim", global.keyboard_aim));
	global.keyboard_reload = round(ini_read_real("mapping", "keyboard_reload", global.keyboard_reload));
	global.keyboard_switch = round(ini_read_real("mapping", "keyboard_switch", global.keyboard_switch));
	global.keyboard_grenade = round(ini_read_real("mapping", "keyboard_grenade", global.keyboard_grenade));
		
#endregion
#region Gamepad mapping.
	
	global.gamepad_sprint1 = round(ini_read_real("mapping", "gamepad_sprint1", global.gamepad_sprint1));
	global.gamepad_sprint2 = round(ini_read_real("mapping", "gamepad_sprint2", global.gamepad_sprint2));
	global.gamepad_dash = round(ini_read_real("mapping", "gamepad_dash", global.gamepad_dash));
	global.gamepad_interaction = round(ini_read_real("mapping", "gamepad_interaction", global.gamepad_interaction));
	global.gamepad_shot = round(ini_read_real("mapping", "gamepad_shot", global.gamepad_shot));
	global.gamepad_aim = round(ini_read_real("mapping", "gamepad_aim", global.gamepad_aim));
	global.gamepad_reload = round(ini_read_real("mapping", "gamepad_reload", global.gamepad_reload));
	global.gamepad_switch = round(ini_read_real("mapping", "gamepad_switch", global.gamepad_switch));
	global.gamepad_grenade = round(ini_read_real("mapping", "gamepad_grenade", global.gamepad_grenade));
	
#endregion

ini_close();