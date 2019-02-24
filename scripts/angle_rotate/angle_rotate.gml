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

if (_diff < -_speed) {
	return _angle-_speed;
} else if (_diff > _speed) {
	return _angle+_speed;
} else {
	return _target;
}