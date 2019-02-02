/// @function input_key_left()
/// @description Devuelve true si se está pulsado la tecla para moverse hacia la izquierda o false en caso contrario.
/// @return boolean

return keyboard_check_direct(controller_game.option_keyboard[2, 0]) || keyboard_check_direct(controller_game.option_keyboard[2, 1]) ||
	   mouse_check_button(controller_game.option_keyboard[2, 0]) || mouse_check_button(controller_game.option_keyboard[2, 1]);