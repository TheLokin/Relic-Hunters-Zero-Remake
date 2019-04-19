/// @description Close game

if (ds_exists(map_languages, ds_type_map)) {
	ds_map_destroy(map_languages);
}
if (ds_exists(map_owners, ds_type_map)) {
	ds_map_destroy(map_owners);
}
options_save();