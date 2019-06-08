/*
 *	get_font(key)
 *
 *	Returns the font associated to a specified key.
 *
 *	key: the key to find.
 *
 *	Return: real.
 */

#region Parameters.

	/// @params key
	var _key = argument0;
	
#endregion

if (ds_exists(controller_game.map_languages, ds_type_map)) {
	var _map_font = ds_map_find_value(controller_game.map_languages, "font");
	
	if (!is_undefined(_map_font) && ds_exists(_map_font, ds_type_map)) {
		var _font = ds_map_find_value(_map_font, _key);
		
		if (!is_undefined(_font)) {
			return _font;
		}
	}
}

return noone;