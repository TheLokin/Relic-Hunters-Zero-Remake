/// @description Opciones

option = controller_game.option_fullscreen;
var _list = get_label(label_code);

if (ds_exists(_list, ds_type_list) && ds_list_size(_list) > 0) {
	for (var _option = 1; _option < ds_list_size(_list); _option++) {
		label_option[_option-1] = ds_list_find_value(_list, _option);
	}
	max_option = array_length_1d(label_option)-1;
	label_text = ds_list_find_value(_list, 0);
	label_text_second = label_option[option];
}