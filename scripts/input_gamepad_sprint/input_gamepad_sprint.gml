/*
 *	input_gamepad_sprint()
 *
 *	Returns true if the button to sprint with the gamepad is currently held down or false otherwise.
 *
 *	Returns: Boolean.
 */

return global.gamepad != noone && (gamepad_button_check(global.gamepad, global.gamepad_sprint1) ||
								   gamepad_button_check(global.gamepad, global.gamepad_sprint2));