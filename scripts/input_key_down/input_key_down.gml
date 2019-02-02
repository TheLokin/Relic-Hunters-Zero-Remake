/// @function input_key_down()
/// @description Devuelve true si se está pulsado la tecla para moverse hacia abajo o false en caso contrario.
/// @return boolean

return keyboard_check_direct(controller_game.option_keyboard[1, 0]) || keyboard_check_direct(controller_game.option_keyboard[1, 1]) ||
	   mouse_check_button(controller_game.option_keyboard[1, 0]) || mouse_check_button(controller_game.option_keyboard[1, 1]);