/// @function options_save()
/// @description Guarda en el fichero "file_options" las opciones del juego.
/// @return void

ini_open(file_options);

#region Opciones de idioma.
	
	if (controller_game.option_language != noone) {
		ini_write_string("language", "language" , controller_game.language_id[controller_game.option_language, 0]);		// Idioma.
	}
	
#endregion
#region Opciones de vídeo.

	ini_write_real("video", "resolution", controller_game.option_resolution);		// Resolución.
	ini_write_real("video", "fullscreen", controller_game.option_fullscreen);		// Pantalla completa.
	
#endregion
#region Opciones de audio.

	ini_write_real("audio", "master", controller_game.option_master);		// Volumen global.
	ini_write_real("audio", "sound", controller_game.option_sound);			// Volumen del sonido.
	ini_write_real("audio", "music", controller_game.option_music);			// Volumen de la música.
	
#endregion
#region Opciones de teclado.

	ini_write_real("keyboard", "move_up1", controller_game.option_keyboard[0, 0]);			// Tecla principal para moverse hacia arriba con el teclado.
	ini_write_real("keyboard", "move_up2", controller_game.option_keyboard[0, 1]);			// Tecla secundaria para moverse hacia arriba con el teclado.
	ini_write_real("keyboard", "move_down1", controller_game.option_keyboard[1, 0]);		// Tecla principal para moverse hacia abajo con el teclado.
	ini_write_real("keyboard", "move_down2", controller_game.option_keyboard[1, 1]);		// Tecla secundaria para moverse hacia abajo con el teclado.
	ini_write_real("keyboard", "move_left1", controller_game.option_keyboard[2, 0]);		// Tecla principal para moverse hacia la izquierda con el teclado.
	ini_write_real("keyboard", "move_left2", controller_game.option_keyboard[2, 1]);		// Tecla secundaria para moverse hacia la izquierda con el teclado.
	ini_write_real("keyboard", "move_right1", controller_game.option_keyboard[3, 0]);		// Tecla principal para moverse hacia la derecha con el teclado.
	ini_write_real("keyboard", "move_right2", controller_game.option_keyboard[3, 1]);		// Tecla secundaria para moverse hacia la derecha con el teclado.

#endregion

ini_close();