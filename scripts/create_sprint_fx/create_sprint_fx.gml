/*
 *	create_sprint_fx(owner)
 *
 *	Plays the sprint effect for the owner.
 *
 *	owner: the owner that perform the sprint.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;

#endregion

var _sprint = instance_create_layer(_owner.x, _owner.y, "interactive", fx_sprint);

with (_sprint) {
	sprite_index = _owner.sprite_sprint_fx;
	image_xscale = _owner.image_xscale;
}