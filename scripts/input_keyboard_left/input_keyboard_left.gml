/*
 *	input_keyboard_left()
 *
 *	Returns true if the button to move to the left with the keyboard is currently held down or false otherwise.
 *
 *	Returns: Boolean.
 */

return keyboard_check(global.keyboard_left1) || keyboard_check(global.keyboard_left2);