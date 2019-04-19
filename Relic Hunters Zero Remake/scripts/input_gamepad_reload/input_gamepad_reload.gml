/*
 *	input_gamepad_reload()
 *
 *	Returns true if the button to reload with the gamepad is currently held down or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && gamepad_button_check(global.gamepad, global.gamepad_reload);