/// input_key_up()
/// Returns true if the key is pressed to move up or false otherwise.

return keyboard_check_direct(controller_game.option_keyboard[0, 0]) ||
	   keyboard_check_direct(controller_game.option_keyboard[0, 1]) ||
	   mouse_check_button(controller_game.option_keyboard[0, 0]) ||
	   mouse_check_button(controller_game.option_keyboard[0, 1]);