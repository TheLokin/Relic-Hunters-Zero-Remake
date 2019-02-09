/*
 *	input_keyboard_down()
 *
 *	Returns true if the button to move down with the keyboard is currently held down or false otherwise.
 *
 *	Returns: Boolean.
 */

return keyboard_check(global.keyboard_down1) || keyboard_check(global.keyboard_down2);