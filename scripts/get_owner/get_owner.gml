/*
 *	get_owner(id)
 *
 *	id: the identifier of the owner.
 *
 *	Return: Real.
 */

#region Parameters.

	var _id = argument0;

#endregion

return ds_map_find_value(controller_game.map_owners, _id);