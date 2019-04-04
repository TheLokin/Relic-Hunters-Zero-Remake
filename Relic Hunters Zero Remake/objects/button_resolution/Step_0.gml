/// @description Acciones

event_inherited();

if (!window_get_fullscreen() && (minus_button.update || plus_button.update)) {
	resolution_update(option);
}