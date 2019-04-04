/*
 *	options_load()
 *
 *	Load the file with the game options.
 *
 *	Return: N/A.
 */

ini_open(file_options);

#region Language.

	global.language = ini_read_real("language", "language" , global.language);
	if (file_exists(file_lang)) {
		var _file = file_text_open_read(file_lang);
		var _string = "";
		
		while (!file_text_eof(_file)) {
			_string += file_text_readln(_file);
		}
		file_text_close(_file);
		controller_game.map_languages = json_decode(_string);
		var _list_default = ds_map_find_value(controller_game.map_languages, "default");
		
		if (!is_undefined(_list_default) && ds_exists(_list_default, ds_type_list)) {
			var _list_size = ds_list_size(_list_default);
			
			if (_list_size > 0) {
				if (global.language < 0 || global.language >= _list_size) {
					global.language = 0;
				}
				set_language(global.language);
			} else {
				ds_map_destroy(controller_game.map_languages);
			}
		} else {
			ds_map_destroy(controller_game.map_languages);
		}
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
#region Master volume.
	
	global.volume_master = round(ini_read_real("volume", "master", global.volume_master));
	if (global.volume_master > 10) {
		global.volume_master = 10;
	} else if (global.volume_master < 0) {
		global.volume_master = 0;
	}
	set_master_volume(global.volume_master);
	
#endregion
#region Sound volume.
	
	global.volume_sound = round(ini_read_real("volume", "sound", global.volume_sound));
	if (global.volume_sound > 10) {
		global.volume_sound = 10;
	} else if (global.volume_sound < 0) {
		global.volume_sound = 0;
	}
	set_sound_volume(global.volume_sound);
	
#endregion
#region Music volume.
	
	global.volume_music = round(ini_read_real("volume", "music", global.volume_music));
	if (global.volume_music > 10) {
		global.volume_music = 10;
	} else if (global.volume_music < 0) {
		global.volume_music = 0;
	}
	set_music_volume(global.volume_music);
	
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