/// @function language_update()
/// @description Actualiza las entradas del idioma seleccionado en el mapa "map_language".
/// @param file
/// @return void

#region Parámetros.
	
	var _file_language = argument0;		// Idioma a cargar.
	
#endregion

if (file_exists(_file_language)) {
	var _file = file_text_open_read(_file_language);
	var _string = "";
	
	while (!file_text_eof(_file)) {
		_string += file_text_readln(_file);	
	}
	file_text_close(_file);
	if (ds_exists(controller_game.map_language, ds_type_map)) {
		ds_map_destroy(controller_game.map_language);
	}
	controller_game.map_language = json_decode(_string);
	if (is_array(controller_game.font_text)) {
		if (font_exists(controller_game.font_text[ft_small])) {
			font_delete(controller_game.font_text[ft_small]);
		}
		if (font_exists(controller_game.font_text[ft_medium])) {
			font_delete(controller_game.font_text[ft_medium]);
		}
		if (font_exists(controller_game.font_text[ft_large])) {
			font_delete(controller_game.font_text[ft_large]);
		}
	}
	if (directory_exists(dir_font) && ds_exists(controller_game.map_language, ds_type_map)) {
		var _map = ds_map_find_value(controller_game.map_language, "font_small");
		
		if (!is_undefined(_map) && ds_exists(_map, ds_type_map)) {
			var _filename = ds_map_find_value(_map, "file");
			var _size = ds_map_find_value(_map, "size");
			var _first = ds_map_find_value(_map, "first");
			var _last = ds_map_find_value(_map, "last");
			
			if (!is_undefined(_filename) && file_exists(dir_font+_filename) && !is_undefined(_size) && !is_undefined(_first) && !is_undefined(_last)) {
				controller_game.font_text[ft_small] = font_add(dir_font+_filename, _size, false, false, _first, _last);
			}
		}
		_map = ds_map_find_value(controller_game.map_language, "font_medium");
		if (!is_undefined(_map) && ds_exists(_map, ds_type_map)) {
			var _filename = ds_map_find_value(_map, "file");
			var _size = ds_map_find_value(_map, "size");
			var _first = ds_map_find_value(_map, "first");
			var _last = ds_map_find_value(_map, "last");
			
			if (!is_undefined(_filename) && file_exists(dir_font+_filename) && !is_undefined(_size) && !is_undefined(_first) && !is_undefined(_last)) {
				controller_game.font_text[ft_medium] = font_add(dir_font+_filename, _size, false, false, _first, _last);
			}
		}
		_map = ds_map_find_value(controller_game.map_language, "font_large");
		if (!is_undefined(_map) && ds_exists(_map, ds_type_map)) {
			var _filename = ds_map_find_value(_map, "file");
			var _size = ds_map_find_value(_map, "size");
			var _first = ds_map_find_value(_map, "first");
			var _last = ds_map_find_value(_map, "last");
			
			if (!is_undefined(_filename) && file_exists(dir_font+_filename) && !is_undefined(_size) && !is_undefined(_first) && !is_undefined(_last)) {
				controller_game.font_text[ft_large] = font_add(dir_font+_filename, _size, false, false, _first, _last);
			}
		}
	}
}