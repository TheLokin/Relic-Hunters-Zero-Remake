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
	var _enemy_x = _enemy.bbox_left+(_enemy.bbox_right-_enemy.bbox_left)/2;
	var _enemy_y = _enemy.bbox_top+(_enemy.bbox_bottom-_enemy.bbox_top)/2;
	
	if (!collision_line(_x, _y, _enemy_x, _enemy_y, class_collision, false, true) &&
		point_distance(_x, _y, _enemy_x, _enemy_y) < _range) {
		return _enemy;
	}
}

return noone;