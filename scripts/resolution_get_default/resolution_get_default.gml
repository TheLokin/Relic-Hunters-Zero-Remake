/// @function resolution_get_default()
/// @description Devuelve una resolución adecuada al tamaño del monitor.
/// @return resolution

var _width = display_get_width();
var _height = display_get_height();

if (_width >= 3840 && _height >= 2160) {
	return 8;
}
if (_width >= 3200 && _height >= 1800) {
	return 7;
}
if (_width >= 2560 && _height >= 1440) {
	return 6;
}
if (_width >= 1920 && _height >= 1080) {
	return 5;
}
if (_width >= 1600 && _height >= 900) {
	return 4;
}
if (_width >= 1280 && _height >= 720) {
	return 3;
}
if (_width >= 1152 && _height >= 648) {
	return 2;
}
if (_width >= 1024 && _height >= 576) {
	return 1;
}
return 0;