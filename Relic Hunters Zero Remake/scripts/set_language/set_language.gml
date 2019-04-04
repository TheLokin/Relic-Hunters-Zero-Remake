/*
 *	set_language(language)
 *
 *	Load the indicated language to the game.
 *
 *	language: language to search.
 *
 *	Return: N/A.
 */

#region Parameters.
	
	var _language = argument0;
	
#endregion

if (ds_exists(controller_game.map_languages, ds_type_map)) {
	var _map_default = ds_map_find_value(controller_game.map_languages, "default");
	var _map_language = ds_map_find_value(controller_game.map_languages, "language");
	
	if (!is_undefined(_map_language) && ds_exists(_map_language, ds_type_map)) {
		ds_map_destroy(_map_language);
	}
	var _file_name = ds_map_find_value(ds_list_find_value(_map_default, _language), "src");
	
	if (!is_undefined(_file_name) && file_exists(dir_lang+_file_name)) {
		var _file = file_text_open_read(dir_lang+_file_name);
		var _string = "";
		
		while (!file_text_eof(_file)) {
			_string += file_text_readln(_file);
		}
		file_text_close(_file);
		ds_map_add_map(controller_game.map_languages, "language", json_decode(_string));
	}
	var _map_font = ds_map_find_value(ds_list_find_value(_map_default, _language), "font");
	
	if (!is_undefined(_map_font) && ds_exists(_map_font, ds_type_map)) {
		var _file_name = ds_map_find_value(_map_font, "src");
		var _first = ds_map_find_value(_map_font, "first");
		var _last = ds_map_find_value(_map_font, "last");
	
		if (!is_undefined(_file_name) && !is_undefined(_first) && !is_undefined(_last) && file_exists(dir_font+_file_name)) {
			var _map_font = ds_map_find_value(controller_game.map_languages, "font");
		
			if (!is_undefined(_map_font) && ds_exists(_map_font, ds_type_map)) {
				ds_map_replace(_map_font, ft_small, font_add(dir_font+_file_name, ft_small, false, false, _first, _last));
				ds_map_replace(_map_font, ft_medium, font_add(dir_font+_file_name, ft_medium, false, false, _first, _last));
				ds_map_replace(_map_font, ft_large, font_add(dir_font+_file_name, ft_large, false, false, _first, _last));
			} else {
				var _map_font = ds_map_create();
			
				ds_map_add(_map_font, ft_small, font_add(dir_font+_file_name, ft_small, false, false, _first, _last));
				ds_map_add(_map_font, ft_medium, font_add(dir_font+_file_name, ft_medium, false, false, _first, _last));
				ds_map_add(_map_font, ft_large, font_add(dir_font+_file_name, ft_large, false, false, _first, _last));
				ds_map_add_map(controller_game.map_languages, "font", _map_font);
			}
		}
	}
}