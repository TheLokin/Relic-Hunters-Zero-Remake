/*
 *	create_sprint_fx(owner)
 *
 *	owner: the owner who is going to perform the sprint.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = get_owner(argument0);

#endregion

var _sprint = instance_create_layer(x, y, "Fx", fx_sprint);

_sprint.sprite_index = _owner.sprite_sprint_fx;
_sprint.image_xscale = _owner.image_xscale;