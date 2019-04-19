/*
 *	create_sprint_fx(owner, sprite)
 *
 *	Plays the sprint effect for the owner.
 *
 *	owner: the owner that perform the sprint.
 *	sprite: the sprite to draw.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;
	var _sprite = argument1;

#endregion

with (instance_create_layer(_owner.x, _owner.y, "interactive", fx_sprint)) {
	sprite_index = _sprite;
	image_xscale = _owner.image_xscale;
}