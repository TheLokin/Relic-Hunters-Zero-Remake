/*
 *	unlink_owner(owner, instance)
 *
 *	Unlink the instance to the owner.
 *
 *	owner: the identifier of the owner.
 *	instance: the instance to unlink.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;
	var _instance = argument1;

#endregion

var _list = ds_map_find_value(controller_game.map_owners, _owner);

_instance.owner = noone;
ds_list_delete(_list, ds_list_find_value(_list, _instance));