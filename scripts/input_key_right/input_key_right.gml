/*
 *	input_key_right()
 *
 *	Returns true if the key to move to the right is pressed or false otherwise.
 *
 *	Returns: Boolean.
 */

return keyboard_check_direct(controller_game.option_keyboard[3, 0]) || keyboard_check_direct(controller_game.option_keyboard[3, 1]) ||
	   mouse_check_button(controller_game.option_keyboard[3, 0]) || mouse_check_button(controller_game.option_keyboard[3, 1]);