/*
 *	create_dash_fx(owner)
 *
 *	Plays the dashing effect for the owner.
 *
 *	owner: the owner that perform the dash.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;

#endregion

var _dash = instance_create_layer(x, y, "interactive", fx_dash);

_dash.owner = _owner;
_dash.sprite_index = _owner.sprite_dash_fx;