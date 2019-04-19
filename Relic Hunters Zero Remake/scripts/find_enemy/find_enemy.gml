/*
 *	find_enemy(x, y, range)
 *
 *	Find the enemy nearest to the position x and y in a certain range.
 *
 *	x: the x position to check from.
 *	y: the y position to check from.
 *	range: the range to check.
 *
 *	Return: class_enemy.
 */

#region Parameters.

	var _x = argument0;
	var _y = argument1;
	var _range = argument2;

#endregion

var _enemy = instance_nearest(_x, _y, class_enemy);

if (_enemy != noone) {
	var _enemy_x = object_get_xcenter(_enemy);
	var _enemy_y = object_get_ycenter(_enemy);
	
	if (!collision_line(_x, _y, _enemy_x, _enemy_y, obj_collision, false, true) && point_distance(_x, _y, _enemy_x, _enemy_y) < _range) {
		return _enemy;
	}
}

return noone;