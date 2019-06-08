/*
 *	gamepad_button_check_doubletap(device, button)
 *
 *	Returns if a given gamepad button has been pressed twice.
 *
 *	device:	which gamepad device slot to check.
 *	button: which gamepad button constant to check for.
 *
 *	Return: boolean.
 */

#region Parameters.

	/// @params device
	var _device = argument0;
	/// @params button
	var _button = argument1;

#endregion

if (gamepad_button_check_pressed(_device, _button)) {
	gamepad_doubletap_counter++;
	gamepad_doubletap_timer = 0;
} else {
	gamepad_doubletap_timer++;
}
if (gamepad_doubletap_timer >= gamepad_doubletap_delay) {
	gamepad_doubletap_counter = 0;
	gamepad_doubletap_timer = 0;
}
if (gamepad_doubletap_counter >= 2 && gamepad_button_check(_device, _button)) {
	gamepad_doubletap_counter = 0;
	gamepad_doubletap_timer = 0;
	
	return true;
}

return false;