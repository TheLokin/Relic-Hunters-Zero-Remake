/*
 *	input_gamepad_cancel_pressed()
 *
 *	Returns true if the button to cancel with the gamepad is pressed or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && gamepad_button_check_pressed(global.gamepad, global.gamepad_cancel);