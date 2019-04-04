/// @function resolution_update()
/// @description Actualiza la resolución de la ventana.
/// @return void

#region Parámetros.

	var _resolution = argument0;		// Resolución de la ventana.

#endregion

var _width = controller_game.resolution[_resolution, 0];
var _height = controller_game.resolution[_resolution, 1];

window_set_size(_width, _height);
surface_resize(application_surface, _width, _height);
display_set_gui_size(base_width, base_height);
controller_game.alarm[0] = 1;