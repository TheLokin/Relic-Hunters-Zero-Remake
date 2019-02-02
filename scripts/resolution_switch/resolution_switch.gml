/// @function resolution_switch()
/// @description Cambia el juego entre pantalla completa y modo ventana.
/// @param fullscreen
/// @return void

#region Parámetros.

	var _fullscreen = argument0;		// Fullscreen.

#endregion

switch (_fullscreen) {
	case 0:
		window_set_fullscreen(false);
		if (instance_exists(obj_button_resolution)) {
			resolution_update(obj_button_resolution.option);	
		} else {
			resolution_update(controller_game.option_resolution);
		}
	break;
	case 1:
		window_set_fullscreen(true);
		surface_resize(application_surface, display_get_width(), display_get_height());
		display_set_gui_size(base_width, base_height);
	break;
}