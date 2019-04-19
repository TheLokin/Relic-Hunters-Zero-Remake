/*
 *	languages_count()
 *
 *	Returns the number of languages.
 *
 *	Return: integer.
 */

if (ds_exists(controller_game.map_owners, ds_type_map)) {
	var _list_languages = ds_map_find_value(controller_game.map_languages, "default");
	
	return ds_list_size(_list_languages);
}

return 0;