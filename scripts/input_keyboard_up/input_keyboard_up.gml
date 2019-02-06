/*
 *	input_keyboard_up()
 *
 *	Returns true if the button to move up with the keyboard is pressed or false otherwise.
 *
 *	Returns: Boolean.
 */

return keyboard_check(ord("W"));

/*
return keyboard_check_direct(controller_game.option_keyboard[0, 0]) ||
	   keyboard_check_direct(controller_game.option_keyboard[0, 1]) ||
	   mouse_check_button(controller_game.option_keyboard[0, 0]) ||
	   mouse_check_button(controller_game.option_keyboard[0, 1]);
*/