/*
 *	input_gamepad_up()
 *
 *	Returns true if the button to move up with the gamepad is currently held down or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && gamepad_button_check(global.gamepad, global.gamepad_up);