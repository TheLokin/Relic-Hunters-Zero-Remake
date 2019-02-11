/*
 *	input_gamepad_grenade_pressed()
 *
 *	Returns true if the button to throw a grenade with the gamepad is pressed or false otherwise.
 *
 *	Returns: Boolean.
 */

return global.gamepad != noone && gamepad_button_check_pressed(global.gamepad, global.gamepad_grenade);