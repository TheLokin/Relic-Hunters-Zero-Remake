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
		if (controller_game.map_languages != -1) {
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
	}
	
#endregion
#region Volume.
	
	global.volume_master = round(ini_read_real("volume", "master", global.volume_master));
	if (global.volume_master > 10) {
		global.volume_master = 10;
	} else if (global.volume_master < 0) {
		global.volume_master = 0;
	}
	set_master_volume(global.volume_master);
	global.volume_sound = round(ini_read_real("volume", "sound", global.volume_sound));
	if (global.volume_sound > 10) {
		global.volume_sound = 10;
	} else if (global.volume_sound < 0) {
		global.volume_sound = 0;
	}
	set_sound_volume(global.volume_sound);
	global.volume_music = round(ini_read_real("volume", "music", global.volume_music));
	if (global.volume_music > 10) {
		global.volume_music = 10;
	} else if (global.volume_music < 0) {
		global.volume_music = 0;
	}
	set_music_volume(global.volume_music);
	
#endregion
#region Window.

	global.fullscreen = round(ini_read_real("window", "fullscreen", global.fullscreen));
	if (global.fullscreen != 0) {
		global.fullscreen = 1;
	}
	window_set_fullscreen(global.fullscreen);
	var _resolution = global.resolution;
	
	global.resolution = round(ini_read_real("window", "resolution", global.resolution));
	if (global.resolution < 0 || global.resolution > _resolution) {
		global.resolution = _resolution;
	}
	window_set_resolution(global.resolution);
	global.vsync = round(ini_read_real("window", "vsync", global.vsync));
	if (global.vsync != 0) {
		global.vsync = 1;
	}
	display_reset(0, global.vsync);
	
#endregion
#region Gameplay.

	global.double_tap = round(ini_read_real("gameplay", "double_tap", global.double_tap));
	if (global.double_tap != 0) {
		global.double_tap = 1;
	}

#endregion
#region Keyboard mapping.
	
	global.keyboard_up = round(ini_read_real("mapping", "keyboard_up", global.keyboard_up));
	global.keyboard_down = round(ini_read_real("mapping", "keyboard_down", global.keyboard_down));
	global.keyboard_left = round(ini_read_real("mapping", "keyboard_left", global.keyboard_left));
	global.keyboard_right = round(ini_read_real("mapping", "keyboard_right", global.keyboard_right));
	global.mouse_confirm = round(ini_read_real("mapping", "mouse_confirm", global.mouse_confirm));
	global.keyboard_confirm = round(ini_read_real("mapping", "keyboard_confirm", global.keyboard_confirm));
	global.keyboard_cancel = round(ini_read_real("mapping", "keyboard_cancel", global.keyboard_cancel));
	global.keyboard_sprint = round(ini_read_real("mapping", "keyboard_sprint", global.keyboard_sprint));
	global.keyboard_dash = round(ini_read_real("mapping", "keyboard_dash", global.keyboard_dash));
	global.keyboard_interaction = round(ini_read_real("mapping", "keyboard_interaction", global.keyboard_interaction));
	global.mouse_shot = round(ini_read_real("mapping", "mouse_shot", global.mouse_shot));
	global.mouse_aim = round(ini_read_real("mapping", "mouse_aim", global.mouse_aim));
	global.keyboard_reload = round(ini_read_real("mapping", "keyboard_reload", global.keyboard_reload));
	global.keyboard_switch = round(ini_read_real("mapping", "keyboard_switch", global.keyboard_switch));
	global.keyboard_grenade = round(ini_read_real("mapping", "keyboard_grenade", global.keyboard_grenade));
		
#endregion
#region Gamepad mapping.
	
	global.gamepad_up = round(ini_read_real("mapping", "gamepad_up", global.gamepad_up));
	global.gamepad_down = round(ini_read_real("mapping", "gamepad_down", global.gamepad_down));
	global.gamepad_left = round(ini_read_real("mapping", "gamepad_left", global.gamepad_left));
	global.gamepad_right = round(ini_read_real("mapping", "gamepad_right", global.gamepad_right));
	global.gamepad_confirm = round(ini_read_real("mapping", "gamepad_confirm", global.gamepad_confirm));
	global.gamepad_cancel = round(ini_read_real("mapping", "gamepad_cancel", global.gamepad_cancel));
	global.gamepad_sprint = round(ini_read_real("mapping", "gamepad_sprint", global.gamepad_sprint));
	global.gamepad_dash = round(ini_read_real("mapping", "gamepad_dash", global.gamepad_dash));
	global.gamepad_interaction = round(ini_read_real("mapping", "gamepad_interaction", global.gamepad_interaction));
	global.gamepad_shot = round(ini_read_real("mapping", "gamepad_shot", global.gamepad_shot));
	global.gamepad_aim = round(ini_read_real("mapping", "gamepad_aim", global.gamepad_aim));
	global.gamepad_reload = round(ini_read_real("mapping", "gamepad_reload", global.gamepad_reload));
	global.gamepad_switch = round(ini_read_real("mapping", "gamepad_switch", global.gamepad_switch));
	global.gamepad_grenade = round(ini_read_real("mapping", "gamepad_grenade", global.gamepad_grenade));
	
#endregion

ini_close();