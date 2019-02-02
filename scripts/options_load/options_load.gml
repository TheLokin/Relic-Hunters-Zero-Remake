/// @function options_load()
/// @description Carga del fichero "file_options" las opciones del juego.
/// @return void

ini_open(file_options);

#region Opciones de idioma.

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
#region Opciones de audio.

	#region Volumen global.
	
		controller_game.option_master = round(ini_read_real("audio", "master", 10));
		if (controller_game.option_master > 10) {
			controller_game.option_master = 10;
		}
		if (controller_game.option_master < 0) {
			controller_game.option_master = 0;
		}
		master_update(controller_game.option_master);
	
	#endregion
	#region Volumen del sonido.
	
		controller_game.option_sound = round(ini_read_real("audio", "sound", 10));
		if (controller_game.option_sound > 10) {
			controller_game.option_sound = 10;
		}
		if (controller_game.option_sound < 0) {
			controller_game.option_sound = 0;
		}
		sound_update(controller_game.option_sound);
	
	#endregion
	#region Volumen de la música.
	
		controller_game.option_music = round(ini_read_real("audio", "music", 10));
		if (controller_game.option_music > 10) {
			controller_game.option_music = 10;
		}
		if (controller_game.option_music < 0) {
			controller_game.option_music = 0;
		}
		music_update(controller_game.option_music);
	
	#endregion
	
#endregion
#region Opciones de teclado.

	controller_game.option_keyboard[0, 0] = round(ini_read_real("keyboard", "move_up1", ord("W")));
	controller_game.option_keyboard[0, 1] = round(ini_read_real("keyboard", "move_up2", vk_up));
	controller_game.option_keyboard[1, 0] = round(ini_read_real("keyboard", "move_down1", ord("S")));
	controller_game.option_keyboard[1, 1] = round(ini_read_real("keyboard", "move_down2", vk_down));
	controller_game.option_keyboard[2, 0] = round(ini_read_real("keyboard", "move_left1", ord("A")));
	controller_game.option_keyboard[2, 1] = round(ini_read_real("keyboard", "move_left2", vk_left));
	controller_game.option_keyboard[3, 0] = round(ini_read_real("keyboard", "move_right1", ord("D")));
	controller_game.option_keyboard[3, 1] = round(ini_read_real("keyboard", "move_right2", vk_right));

#endregion

ini_close();