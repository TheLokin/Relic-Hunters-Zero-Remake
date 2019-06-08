/*
 *	keyboard_init_doubletap(delay)
 *
 *	Sets the maximum delay between a doubletap for the keyboard input.
 *
 *	delay: delay between two taps.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params delay
	var _delay = argument0;

#endregion

keyboard_doubletap_counter = 0;
keyboard_doubletap_timer = 0;
keyboard_doubletap_delay = _delay > 0 ? _delay : 0;