/*
 *	input_gamepad_switch_pressed()
 *
 *	Returns true if the button to switch the weapon with the gamepad is pressed or false otherwise.
 *
 *	Returns: boolean.
 */

return global.gamepad != noone && gamepad_button_check_pressed(global.gamepad, global.gamepad_switch);