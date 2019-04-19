/*
 *	create_dash_fx(owner, sprite)
 *
 *	Plays the dashing effect for the owner.
 *
 *	owner: the owner that perform the dash.
 *	sprite: the sprite to draw.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;
	var _sprite = argument1;

#endregion

with (instance_create_layer(_owner.x, _owner.y, "interactive", fx_dash)) {
	owner = _owner;
	sprite_index = _sprite;
}
audio_play(_owner.audio_emitter, false, pr_low, sfx_dash1, sfx_dash2, sfx_dash3);