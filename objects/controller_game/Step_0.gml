/// @description Control del juego

if (keyboard_check(vk_anykey)) {
	global.gamepad = noone;
}
if (gamepad_check(gamepad)) {
	global.gamepad = gamepad;
}

//window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()))