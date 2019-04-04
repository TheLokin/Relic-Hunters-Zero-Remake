/*
 *	get_lang_value(key)
 *
 *	Returns the value in the language associated to a specified key.
 *
 *	key: the key to find.
 *
 *	Return: string.
 */

#region Parameters.

	var _key = argument0;

#endregion

if (ds_exists(controller_game.map_languages, ds_type_map)) {
	var _map_language = ds_map_find_value(controller_game.map_languages, "language");
	
	if (!is_undefined(_map_language) && ds_exists(_map_language, ds_type_map)) {
		var _value = ds_map_find_value(_map_language, _key);
		
		if (is_undefined(_value)) {
			return "unsigned";
		} else {
			return _value;
		}
	}
}

return "unsigned";