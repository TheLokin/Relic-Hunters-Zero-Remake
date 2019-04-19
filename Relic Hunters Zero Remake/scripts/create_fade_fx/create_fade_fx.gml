/*
 *	create_fade_fx(room, speed')
 *
 *	Plays a fading transition between two rooms.
 *
 *	room: target room.
 *	speed: transition speed (optional).
 *
 *	Return: N/A.
 */

#region Parameters.

	var _room = argument[0];
	var _speed = argument_count == 2 ? argument[1] : 0.08;
	
#endregion

if (instance_exists(controller_menu)) {
	controller_menu.allow_input = false;
}
with (instance_create_layer(0, 0, "fade", fx_fade)) {
	target_room = _room;
	alpha_speed = _speed;
}