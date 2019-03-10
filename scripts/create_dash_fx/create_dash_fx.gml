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

var _dash = instance_create_layer(_owner.x, _owner.y, "interactive", fx_dash);

with (_dash) {
	owner = _owner;
	sprite_index = _owner.sprite_dash_fx;
}
audio_play(_owner.audio_emitter, false, pr_low, sfx_dash1, sfx_dash2, sfx_dash3);