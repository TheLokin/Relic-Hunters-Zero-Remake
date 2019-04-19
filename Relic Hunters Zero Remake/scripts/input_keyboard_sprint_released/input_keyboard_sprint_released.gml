/*
 *	input_keyboard_sprint_released()
 *
 *	Returns true if the button to sprint with the keyboard is released or false otherwise.
 *
 *	Returns: boolean.
 */

return keyboard_check_released(global.keyboard_sprint) || global.double_tap && keyboard_check_released(global.keyboard_dash);