/*
 *	create_dirt_fx(owner, min, max)
 *
 *	Plays the dirt effect for the owner with a number of particles
 *	between the minimum and the maximum.
 *
 *	owner: the owner that perform the dig.
 *	min: minimum particles of dirt.
 *	max: maximum particles of dirt.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params owner
	var _owner = argument0;
	/// @params min
	var _min = argument1;
	/// @params max
	var _max = argument2;

#endregion

repeat(irandom_range(_min, _max)) {
	with (instance_create_layer(_owner.x+11*_owner.image_xscale, _owner.y-13, "interactive", fx_dirt)) {
		height_max += 10;
		if (place_meeting(x, y, obj_collision)) {
			if (_owner.image_xscale == -1) {
				direction = 180;
				target_direction = 180;
			} else {
				direction = 0;
				target_direction = 0;
			}
		} else {
			if (_owner.image_xscale == 1) {
				direction = 180;
				target_direction = 180;
			} else {
				direction = 0;
				target_direction = 0;
			}
		}
	}
}