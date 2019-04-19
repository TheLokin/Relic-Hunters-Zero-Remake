/// @description Acciones

event_inherited();

if (execute_action) {
	text_secondary = string(controller_game.resolutions[option, 0])+" x "+string(controller_game.resolutions[option,1]);
	window_set_resolution(option);
}