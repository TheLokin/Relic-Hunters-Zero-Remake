/// @description Close

if (ds_exists(map_language, ds_type_map)) {
	ds_map_destroy(map_language);
}

ds_map_destroy(map_owners);