/*
 *	input_gamepad_sprint_released()
 *
 *	Returns true if the button to sprint with the gamepad is released or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && (gamepad_button_check_released(global.gamepad, global.gamepad_sprint) || global.double_tap && gamepad_button_check_released(global.gamepad, global.gamepad_dash));