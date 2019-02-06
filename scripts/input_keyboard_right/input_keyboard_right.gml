/*
 *	input_keyboard_right()
 *
 *	Returns true if the button to move to the right with the keyboard is pressed or false otherwise.
 *
 *	Returns: Boolean.
 */

return keyboard_check(ord("D"));

/*
return keyboard_check_direct(controller_game.option_keyboard[3, 0]) || keyboard_check_direct(controller_game.option_keyboard[3, 1]) ||
	   mouse_check_button(controller_game.option_keyboard[3, 0]) || mouse_check_button(controller_game.option_keyboard[3, 1]);
*/