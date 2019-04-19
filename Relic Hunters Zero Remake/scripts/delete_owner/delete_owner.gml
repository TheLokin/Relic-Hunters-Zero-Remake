/*
 *	delete_owner(owner)
 *
 *	Delete the list of instances linked to the owner.
 *
 *	owner: the identifier of the owner.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;

#endregion

var _list = ds_map_find_value(controller_game.map_owners, _owner);

for (var _i = 0; _i < ds_list_size(_list); _i++) {
	var _instance = ds_list_find_value(_list, _i);
	
	if (instance_exists(_instance)) {
		instance_destroy(_instance);
	}
}
ds_list_destroy(_list);
ds_map_delete(controller_game.map_owners, _owner);