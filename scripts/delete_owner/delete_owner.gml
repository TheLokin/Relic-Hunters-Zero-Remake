/*
 *	delete_owner(id)
 *
 *	id: the identifier of the owner.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _id = argument0;

#endregion

ds_map_delete(controller_game.map_owners, _id);