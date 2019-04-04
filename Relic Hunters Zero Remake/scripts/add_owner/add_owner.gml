/*
 *	add_owner(owner)
 *
 *	Create a list for the instances binded to the owner.
 *
 *	owner: the identifier of the owner.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;

#endregion

ds_map_add_list(controller_game.map_owners, _owner, ds_list_create());