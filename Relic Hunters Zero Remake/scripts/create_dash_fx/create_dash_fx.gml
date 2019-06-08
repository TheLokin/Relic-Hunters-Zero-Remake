/*
 *	create_dash_fx(sprite, owner)
 *
 *	Plays the dashing effect for the owner.
 *
 *	sprite: the sprite of the dash.
 *	owner: the owner to assign the dash.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params sprite
	var _sprite = argument0;
	/// @params owner
	var _owner = argument1;

#endregion

audio_play(_owner.audio_emitter, false, pr_low, choose(sfx_dash1, sfx_dash2, sfx_dash3));
with (instance_create_layer(_owner.x, _owner.y, "interactive", fx_dash)) {
	owner = _owner;
	sprite_index = _sprite;
}