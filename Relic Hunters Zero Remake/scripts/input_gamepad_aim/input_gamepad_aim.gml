/*
 *	input_gamepad_aim()
 *
 *	Returns true if the button to aim with the gamepad is currently held down or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && gamepad_button_check(global.gamepad, global.gamepad_aim);