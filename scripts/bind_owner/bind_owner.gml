/*
 *	bind_owner(owner, instance)
 *
 *	Bind the instance to the owner.
 *
 *	owner: the identifier of the owner.
 *	instance: the instance to bind.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;
	var _instance = argument1;

#endregion

_instance.owner = _owner;
ds_list_add(ds_map_find_value(controller_game.map_owners, _owner), _instance);