/*
 *	get_gamepad_connected()
 *
 *	Returns the first connected gamepad or noone otherwise.
 *
 *	Returns: integer.
 */

for (var _gamepad = 0; _gamepad < gamepad_get_device_count(); _gamepad++) {	
	if (gamepad_is_connected(_gamepad)) {
		return _gamepad;
	}
}

return noone;