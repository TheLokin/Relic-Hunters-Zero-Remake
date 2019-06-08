/*
 *	keyboard_check_doubletap(key)
 *
 *	Returns if a given key on the keyboard has been pressed twice.
 *
 *	key: the key to check the down state of.
 *
 *	Return: boolean.
 */

#region Parameters.

	/// @params key
	var _key = argument0;

#endregion

if (keyboard_check_pressed(_key)) {
	keyboard_doubletap_counter++;
	keyboard_doubletap_timer = 0;
} else {
	keyboard_doubletap_timer++;
}
if (keyboard_doubletap_timer >= keyboard_doubletap_delay) {
	keyboard_doubletap_counter = 0;
	keyboard_doubletap_timer = 0;
}
if (keyboard_doubletap_counter >= 2 && keyboard_check(_key)) {
	keyboard_doubletap_counter = 0;
	keyboard_doubletap_timer = 0;
	
	return true;
}

return false;