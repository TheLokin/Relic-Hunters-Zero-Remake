/*
 *	input_gamepad_interaction()
 *
 *	Returns true if the button to interact with the gamepad is currently held down or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && gamepad_button_check(global.gamepad, global.gamepad_interaction);