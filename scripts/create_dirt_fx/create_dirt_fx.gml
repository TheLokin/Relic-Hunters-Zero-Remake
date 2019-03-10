/*
 *	create_dirt_fx(owner)
 *
 *	Plays the dirt effect for the owner.
 *
 *	owner: the owner that perform the dig.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;

#endregion

repeat(irandom_range(6, 8)) {
	var _dirt = instance_create_layer(_owner.x+11*_owner.image_xscale, _owner.y-13, "interactive", fx_dirt);
	
	with (_dirt) {
		height_max += 10;
		depth = _owner.depth-2;
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