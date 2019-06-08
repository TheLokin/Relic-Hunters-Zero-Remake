/*
 *	create_sprint_fx(sprite, owner)
 *
 *	Plays the sprint effect for the owner.
 *
 *	sprite: the sprite of the sprint.
 *	owner: the owner to assign the sprint.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params sprite
	var _sprite = argument0;
	/// @params owner
	var _owner = argument1;

#endregion

with (instance_create_layer(_owner.x, _owner.y, "interactive", fx_sprint)) {
	sprite_index = _sprite;
	image_xscale = _owner.image_xscale;
}