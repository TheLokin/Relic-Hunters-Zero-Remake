/*
 *	create_coin_fx(owner, min, max)
 *
 *	Create a number of coins.
 *
 *	owner: the owner that perform the .
 *	min: minimum of coins.
 *	max: maximum of coins.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params owner
	var _owner = argument0;
	/// @params min
	var _min = argument1;
	/// @params max
	var _max = argument2;

#endregion

repeat(irandom_range(_min, _max)) {
	with (instance_create_layer(_owner.x, _owner.y, "interactive", fx_coin)) {
		height_max += 10;
		depth = _owner.depth-2;
		direction = irandom_range(0, 1);
		target_direction = direction;
	}
}