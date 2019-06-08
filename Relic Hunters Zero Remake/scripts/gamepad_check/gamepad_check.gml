/*
 *	gamepad_check(gamepad)
 *
 *	Returns true if any button on the gamepad is currently held down or false otherwise.
 *
 *	gamepad: gamepad to check.
 *
 *	Returns: boolean.
 */

#region Parameters.

	/// @params gamepad
	var _gamepad = argument0;

#endregion

if (_gamepad != noone && gamepad_is_connected(_gamepad)) {
	for (var _i = 0; _i < 20; _i++) {
		switch (_i) {
			case 0:
				if (gamepad_button_check(_gamepad, gp_face1)) {
					return true;
				}
			break;
			case 1:
				if (gamepad_button_check(_gamepad, gp_face2)) {
					return true;
				}
			break;
			case 2:
				if (gamepad_button_check(_gamepad, gp_face3)) {
					return true;
				}
			break;
			case 3:
				if (gamepad_button_check(_gamepad, gp_face4)) {
					return true;
				}
			break;
			case 4:
				if (gamepad_button_check(_gamepad, gp_shoulderl)) {
					return true;
				}
			break;
			case 5:
				if (gamepad_button_check(_gamepad, gp_shoulderlb)) {
					return true;
				}
			break;
			case 6:
				if (gamepad_button_check(_gamepad, gp_shoulderr)) {
					return true;
				}
			break;
			case 7:
				if (gamepad_button_check(_gamepad, gp_shoulderrb)) {
					return true;
				}
			break;
			case 8:
				if (gamepad_button_check(_gamepad, gp_select)) {
					return true;
				}
			break;
			case 9:
				if (gamepad_button_check(_gamepad, gp_start)) {
					return true;
				}
			break;
			case 10:
				if (gamepad_button_check(_gamepad, gp_stickl)) {
					return true;
				}
			break;
			case 11:
				if (gamepad_button_check(_gamepad, gp_stickr)) {
					return true;
				}
			break;
			case 12:
				if (gamepad_button_check(_gamepad, gp_padu)) {
					return true;
				}
			break;
			case 13:
				if (gamepad_button_check(_gamepad, gp_padd)) {
					return true;
				}
			break;
			case 14:
				if (gamepad_button_check(_gamepad, gp_padl)) {
					return true;
				}
			break;
			case 15:
				if (gamepad_button_check(_gamepad, gp_padr)) {
					return true;
				}
			break;
			case 16:
				if (gamepad_axis_value(_gamepad, gp_axislh) != 0) {
					return true;
				}
			break;
			case 17:
				if (gamepad_axis_value(_gamepad, gp_axislv) != 0) {
					return true;
				}
			break;
			case 18:
				if (gamepad_axis_value(_gamepad, gp_axisrh) != 0) {
					return true;
				}
			break;
			case 19:
				if (gamepad_axis_value(_gamepad, gp_axisrv) != 0) {
					return true;
				}
			break;
		}
	}
}

return false;