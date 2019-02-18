/// @description Control del juego

if (keyboard_check_pressed(vk_f2)) {
	global.debug = !global.debug;
}
if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

switch (room) {
	case rm_menu1: case rm_menu2: case rm_menu3: case rm_menu4: case rm_menu5: case rm_menu6: case rm_menu7:
		var _gamepad = get_gamepad_connected();
		
		if (gamepad_check(_gamepad)) {
			global.gamepad = _gamepad;
		}
	break;
}

//window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))