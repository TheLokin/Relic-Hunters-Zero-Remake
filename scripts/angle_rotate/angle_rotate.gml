/*
 *	angle_rotate(angle, target, speed)
 *
 *	Calculate the closest rotation.
 *
 *	angle: current angle.
 *	target: target angle.
 *	speed: speed rotation.
 *
 *	Return: real.
 */

#region Parameters.

	var _angle = argument0;
	var _target = argument1;
	var _speed = argument2;

#endregion

var _diff = angle_cycle(_target-_angle, -180, 180);
var _result = _target;

if (_diff < -_speed) {
	_result = _angle-_speed;
} else if (_diff > _speed) {
	_result = _angle+_speed;
}
if (_result < 0) {
	return _result+360;
} else {
	return _result;
}