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

	var _owner = argument0;
	var _min = argument1;
	var _max = argument2;

#endregion

repeat(irandom_range(_min, _max)) {
	var _coin = instance_create_layer(_owner.x, _owner.y, "interactive", fx_coin);
	
	with (_coin) {
		height_max += 10;
		depth = _owner.depth-2;
		direction = irandom_range(0, 1);
		target_direction = direction;
	}
}