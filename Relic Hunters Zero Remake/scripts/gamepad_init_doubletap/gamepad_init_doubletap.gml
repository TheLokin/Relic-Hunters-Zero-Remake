/*
 *	gamepad_init_doubletap(delay)
 *
 *	Sets the maximum delay between a doubletap for the gamepad input.
 *
 *	delay: delay between two taps.
 *
 *	Return: N/A.
 */


#region Parameters.

	/// @params delay
	var _delay = argument0;

#endregion

gamepad_doubletap_counter = 0;
gamepad_doubletap_timer = 0;
gamepad_doubletap_delay = _delay > 0 ? _delay : 0;