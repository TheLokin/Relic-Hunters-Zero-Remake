/*
 *	window_set_resolution(resolution)
 *
 *	Update the resolution of the window.
 *
 *	resolution: window resolution.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params resolution
	var _resolution = argument0;

#endregion

if (window_get_fullscreen()) {
	surface_resize(application_surface, display_get_width(), display_get_height());
	display_set_gui_size(base_width, base_height);
} else {
	var _width = controller_game.resolutions[_resolution, 0];
	var _height = controller_game.resolutions[_resolution, 1];

	window_set_size(_width, _height);
	surface_resize(application_surface, _width, _height);
	display_set_gui_size(base_width, base_height);
	controller_game.alarm[0] = 1;
}