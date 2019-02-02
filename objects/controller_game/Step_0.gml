/// @description Control del juego

if (keyboard_check_pressed(vk_f2)) {
	global.debug = !global.debug;
}
if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

//window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))