/// @description Acciones

event_inherited();

if (execute_action) {
	text_secondary = get_lang_value(language_key_secondary, option);
	window_set_fullscreen(option);
	window_set_resolution(button_resolution.option);
}