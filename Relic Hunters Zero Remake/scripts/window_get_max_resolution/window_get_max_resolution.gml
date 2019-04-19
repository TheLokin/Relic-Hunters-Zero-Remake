/*
 *	window_get_max_resolution()
 *
 *	Returns the option with the maximum resolution supported by the device.
 *
 *	Return: Integer.
 */

var _width = display_get_width();
var _height = display_get_height();

for (var _i = array_height_2d(controller_game.resolutions)-1; _i > 0; _i--) {
	if (controller_game.resolutions[_i, 0] <= _width && controller_game.resolutions[_i, 1] <= _height) {
		return _i;
	}
}

return 0;