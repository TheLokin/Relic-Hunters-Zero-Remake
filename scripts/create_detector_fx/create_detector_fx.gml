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

var _detector = instance_create_layer(x, y, "interactive", fx_detector);
var _dig_spot_distance = point_distance(x, y, dig_spot.x, dig_spot.y);
var _duration = room_speed;

if (_dig_spot_distance <= 240) {
	_detector.target_radius = 120;
	_detector.color = c_crimson;
	_duration *= 0.3;
} else if (_dig_spot_distance <= 500) {
	_detector.target_radius = 160;
	_detector.color = c_blue;
	_duration *= 0.45;
} else {
	_detector.target_radius = 200;
	_detector.color = c_cobalt;
	_duration *= 0.6;
}
if (!instance_exists(fx_detector_arrow)) {
	var _detector_arrow = instance_create_layer(x, y, "interactive_over", fx_detector_arrow);
	
	_detector_arrow.owner = _owner;
	_detector_arrow.alarm[0] = _duration;
}