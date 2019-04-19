/*
 *	get_lang_code(language)
 *
 *	Returns the code associated to the language.
 *
 *	language: language to search.
 *
 *	Return: string.
 */

#region Parameters.

	var _language = argument0;

#endregion

if (ds_exists(controller_game.map_owners, ds_type_map)) {
	var _code = ds_map_find_value(ds_list_find_value(ds_map_find_value(controller_game.map_languages, "default"), _language), "code");
	
	if (!is_undefined(_code)) {
		return string_upper(_code);
	}
}

return "unsigned";