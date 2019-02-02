/// @function get_gamepad_connected()
/// @description Devuelve el primer gamepad activo o noone si no hay ninguno. 
/// @return gamepad

for (var _gamepad = 0; _gamepad < gamepad_get_device_count(); _gamepad++) {
	if (gamepad_check(_gamepad)) {
		return _gamepad;
	}
}

return noone;