/*
 *	input_keyboard_up()
 *
 *	Returns true if the button to move up with the keyboard is currently held down or false otherwise.
 *
 *	Returns: boolean.
 */

return keyboard_check(global.keyboard_up1) || keyboard_check(global.keyboard_up2);