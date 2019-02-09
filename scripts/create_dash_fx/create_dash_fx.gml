/*
 *	create_dash_fx(owner)
 *
 *	owner: the owner who is going to perform the dash.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = get_owner(argument0);

#endregion

var _dash = instance_create_layer(x, y, "Fx", fx_dash);

_dash.owner = _owner;
_dash.sprite_index = _owner.sprite_dash_fx;