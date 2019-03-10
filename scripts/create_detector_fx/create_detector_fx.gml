/*
 *	create_detector_fx(owner)
 *
 *	Plays the detector effect for the owner.
 *
 *	owner: the owner that perform the detector.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _owner = argument0;

#endregion

var _detector = instance_create_layer(_owner.x, _owner.y, "interactive_under", fx_detector);
var _dig_spot_distance = point_distance(_owner.x, _owner.y, obj_dig_spot.x, obj_dig_spot.y);
var _duration = room_speed;

with (_detector) {
	if (_dig_spot_distance <= 240) {
		target_radius = 120;
		color = c_crimson;
		_duration *= 0.3;
	} else if (_dig_spot_distance <= 500) {
		target_radius = 160;
		color = c_blue;
		_duration *= 0.45;
	} else {
		target_radius = 200;
		color = c_cobalt;
		_duration *= 0.6;
	}
}
if (!instance_exists(fx_detector_arrow)) {
	var _detector_arrow = instance_create_layer(_owner.x, _owner.y, "interactive_over", fx_detector_arrow);
	
	with (_detector_arrow) {
		owner = _owner;
		alarm[0] = _duration;
	}
}