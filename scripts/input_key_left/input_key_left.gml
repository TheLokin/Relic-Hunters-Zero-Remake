/*
 *	input_key_left()
 *
 *	Returns true if the key to move to the left is pressed or false otherwise.
 */

return keyboard_check_direct(controller_game.option_keyboard[2, 0]) || keyboard_check_direct(controller_game.option_keyboard[2, 1]) ||
	   mouse_check_button(controller_game.option_keyboard[2, 0]) || mouse_check_button(controller_game.option_keyboard[2, 1]);