/// @description Opciones

option = controller_game.option_resolution;
var _option = 0;

do {
	label_option[_option] = string(controller_game.resolution[_option, 0])+" x "+string(controller_game.resolution[_option, 1]);
	_option++;
} until (display_get_width() < controller_game.resolution[_option, 0] || display_get_height() < controller_game.resolution[_option, 1]);
max_option = array_length_1d(label_option)-1;
label_text = get_label(label_code);
label_text_second = label_option[option];