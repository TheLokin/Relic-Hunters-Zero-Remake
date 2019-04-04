/// @description Opciones

option = global.volume_master;
for (var _option = 0; _option <= 10; _option++) {
	label_option[_option] = string(_option);
}
max_option = array_length_1d(label_option)-1;
text = get_lang_value(language_key);
label_text_second = label_option[option];