/*
 *	add_owner(id, owner)
 *
 *	id: the identifier of the owner.
 *	owner: the owner to add.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _id = argument0;
	var _owner = argument1;

#endregion

ds_map_add(controller_game.map_owners, _id, _owner);
_owner.owner = _id;