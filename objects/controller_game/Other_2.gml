/// @description Arranque

resolution[0, 0] = 640;		resolution[0, 1] = 360;
resolution[1, 0] = 1024;	resolution[1, 1] = 576;
resolution[2, 0] = 1152;	resolution[2, 1] = 648;
resolution[3, 0] = 1280;	resolution[3, 1] = 720;
resolution[4, 0] = 1600;	resolution[4, 1] = 900;
resolution[5, 0] = 1920;	resolution[5, 1] = 1080;
resolution[6, 0] = 2560;	resolution[6, 1] = 1440;
resolution[7, 0] = 3200;	resolution[7, 1] = 1800;
resolution[8, 0] = 3840;	resolution[8, 1] = 2160;

options_load();

#region Audio.

	audio_group_load(ag_sound);		// Cargar sonidos.
	
#endregion
#region Mando

	for (var _gamepad = 0; _gamepad < gamepad_get_device_count(); _gamepad++) {
		if (gamepad_is_connected(_gamepad)) {
			gamepad_set_axis_deadzone(_gamepad, 0.3);
			gamepad_set_button_threshold(_gamepad, 0.3);
		}
	}

#endregion