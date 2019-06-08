/*
 *	angle_cycle(value, min, max)
 *
 *	Value limited between negative range and positive range using remainder of division
 *	by that, and add range to it if it is negative, so that it would stay in range.
 *
 *	value: angle to cycling.
 *	min: min range.
 *	max: max range.
 *
 *	Return: real.
 */

#region Parameters.

	/// @params value
	var _value = argument0;
	/// @params min
	var _min = argument1;
	/// @params max
	var _max = argument2;

#endregion

var _delta = _max-_min;
var _result = (_value-_min) mod _delta;

if (_result < 0) {
	_result += _delta;
}

return _result+_min;