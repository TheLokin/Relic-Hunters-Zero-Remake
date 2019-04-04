/// @description Opciones

if (controller_game.option_language != noone) {
	option = controller_game.option_language;
	for (var _option = 0; _option < array_length_1d(controller_game.language_id); _option++) {
		label_option[_option] = controller_game.language_id[_option, 0];
	}
	max_option = array_length_1d(label_option)-1;
	label_text = get_lang_value(label_code);
	label_text_second = label_option[option];
}