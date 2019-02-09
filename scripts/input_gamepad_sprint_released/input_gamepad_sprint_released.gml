/*
 *	input_gamepad_sprint_released()
 *
 *	Returns true if the button to sprint with the gamepad is released or false otherwise.
 *
 *	Returns: Boolean.
 */

return global.gamepad != noone && (gamepad_button_check_released(global.gamepad, global.gamepad_sprint1) ||
								   gamepad_button_check_released(global.gamepad, global.gamepad_sprint2));