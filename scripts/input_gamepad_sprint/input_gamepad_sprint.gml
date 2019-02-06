/*
 *	input_gamepad_sprint()
 *
 *	Returns true if the button to sprint with the gamepad is pressed or false otherwise.
 *
 *	Returns: Boolean.
 */

return global.gamepad != noone && (gamepad_button_check(global.gamepad, gp_stickl) || gamepad_button_check(global.gamepad, gp_face1));