/*
 *	input_gamepad_right()
 *
 *	Returns true if the button to move right with the gamepad is currently held down or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && gamepad_button_check(global.gamepad, global.gamepad_right);