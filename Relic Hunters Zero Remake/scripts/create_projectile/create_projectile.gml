/*
 *	create_projectile(projectile, owner)
 *
 *	
 *
 *	projectile: 
 *	owner: the owner that shot.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params projectile
	var _projectile = argument0;
	/// @params owner
	var _owner = argument1;

#endregion

with (instance_create_layer(_owner.x, _owner.y, "interactive", _projectile)) {
	image_xscale = _owner.image_xscale;
	image_angle = point_direction(x, y, _owner.crosshair_x, _owner.crosshair_y);
	direction = image_angle;
}