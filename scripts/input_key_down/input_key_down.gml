/*
 *	input_key_down()
 *
 *	Returns true if the key to move down is pressed or false otherwise.
 *
 *	Returns: Boolean.
 */

return keyboard_check_direct(controller_game.option_keyboard[1, 0]) || keyboard_check_direct(controller_game.option_keyboard[1, 1]) ||
	   mouse_check_button(controller_game.option_keyboard[1, 0]) || mouse_check_button(controller_game.option_keyboard[1, 1]);