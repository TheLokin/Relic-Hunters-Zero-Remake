/*
 *	get_gamepad_connected()
 *
 *	Returns the first active gamepad or noone if there is none connected.
 *
 *	Returns: Integer.
 */

var _gamepad_connected = noone;

for (var _gamepad = 0; _gamepad < gamepad_get_device_count(); _gamepad++) {	
	if (gamepad_is_connected(_gamepad)) {
		for (var _i = 0; _i < 20; _i++) {
			switch (_i) {
				case 0:
					if (gamepad_button_check(_gamepad, gp_face1)) {
						return _gamepad;
					}
				break;
				case 1:
					if (gamepad_button_check(_gamepad, gp_face2)) {
						return _gamepad;
					}
				break;
				case 2:
					if (gamepad_button_check(_gamepad, gp_face3)) {
						return _gamepad;
					}
				break;
				case 3:
					if (gamepad_button_check(_gamepad, gp_face4)) {
						return _gamepad;
					}
				break;
				case 4:
					if (gamepad_button_check(_gamepad, gp_shoulderl)) {
						return _gamepad;
					}
				break;
				case 5:
					if (gamepad_button_check(_gamepad, gp_shoulderlb)) {
						return _gamepad;
					}
				break;
				case 6:
					if (gamepad_button_check(_gamepad, gp_shoulderr)) {
						return _gamepad;
					}
				break;
				case 7:
					if (gamepad_button_check(_gamepad, gp_shoulderrb)) {
						return _gamepad;
					}
				break;
				case 8:
					if (gamepad_button_check(_gamepad, gp_select)) {
						return _gamepad;
					}
				break;
				case 9:
					if (gamepad_button_check(_gamepad, gp_start)) {
						return _gamepad;
					}
				break;
				case 10:
					if (gamepad_button_check(_gamepad, gp_stickl)) {
						return _gamepad;
					}
				break;
				case 11:
					if (gamepad_button_check(_gamepad, gp_stickr)) {
						return _gamepad;
					}
				break;
				case 12:
					if (gamepad_button_check(_gamepad, gp_padu)) {
						return _gamepad;
					}
				break;
				case 13:
					if (gamepad_button_check(_gamepad, gp_padd)) {
						return _gamepad;
					}
				break;
				case 14:
					if (gamepad_button_check(_gamepad, gp_padl)) {
						return _gamepad;
					}
				break;
				case 15:
					if (gamepad_button_check(_gamepad, gp_padr)) {
						return _gamepad;
					}
				break;
				case 16:
					if (gamepad_axis_value(_gamepad, gp_axislh) != 0) {
						return _gamepad;
					}
				break;
				case 17:
					if (gamepad_axis_value(_gamepad, gp_axislv) != 0) {
						return _gamepad;
					}
				break;
				case 18:
					if (gamepad_axis_value(_gamepad, gp_axisrh) != 0) {
						return _gamepad;
					}
				break;
				case 19:
					if (gamepad_axis_value(_gamepad, gp_axisrv) != 0) {
						return _gamepad;
					}
				break;
			}
		}
		if (_gamepad_connected == noone) {
			_gamepad_connected = _gamepad;
		}
	}
}

return _gamepad_connected;