/*
 *	input_gamepad_dash()
 *
 *	Returns true if the button to dash with the gamepad is currently held down or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && gamepad_button_check(global.gamepad, global.gamepad_dash);