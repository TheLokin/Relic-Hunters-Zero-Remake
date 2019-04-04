/*
 *	joystick_deadzone_check(horizontal_axis, vertical_axis, deadzone)
 *
 *	Returns true if the joystick is inside the action zone or false otherwise.
 *
 *	horizotal_axis: horizontal axis of the joystick.
 *	vertical_axis: vertical axis of the joystick.
 *	deadzone: deadzone of the joystick, from 0 to 1.
 *
 *	Returns: boolean.
 */

#region Parameters.

	var _horizontal_axis = argument0;
	var _vertical_axis = argument1;
	var _deadzone = argument2;

#endregion

return point_distance(0, 0, _horizontal_axis, _vertical_axis) >= _deadzone;