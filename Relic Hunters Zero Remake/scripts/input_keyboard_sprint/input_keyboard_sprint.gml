/*
 *	input_keyboard_sprint()
 *
 *	Returns true if the button to sprint with the keyboard is currently held down or false otherwise.
 *
 *	Returns: boolean.
 */

return keyboard_check(global.keyboard_sprint) || global.double_tap && keyboard_check(global.keyboard_dash);