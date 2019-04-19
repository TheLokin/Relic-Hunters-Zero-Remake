/*
 *	get_lang_value(key, option')
 *
 *	Returns the value in the language associated to a specified key.
 *
 *	key: the key to find.
 *	option: the option to select (optional).
 *
 *	Return: string.
 */

#region Parameters.

	var _key = argument[0];
	var _option = argument_count == 2 ? argument[1] : noone;

#endregion

if (ds_exists(controller_game.map_languages, ds_type_map)) {
	var _map_language = ds_map_find_value(controller_game.map_languages, "language");
	
	if (!is_undefined(_map_language) && ds_exists(_map_language, ds_type_map)) {
		var _value = ds_map_find_value(_map_language, _key);
		
		if (!is_undefined(_value)) {
			if (is_string(_value)) {
				return _value;
			} else if (ds_exists(_value, ds_type_list)) {
				_value = ds_list_find_value(_value, _option);
				if (!is_undefined(_value)) {
					return _value;
				}
			}
		}
	}
}

return "unsigned";