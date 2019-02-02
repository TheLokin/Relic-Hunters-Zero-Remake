/// @description Actualizar

event_inherited();

if (window_get_fullscreen()) {
	minus_button.is_avaliable = false;
	plus_button.is_avaliable = false;
	label_text_second = "N/A";
} else {
	label_text_second = label_option[option];
}