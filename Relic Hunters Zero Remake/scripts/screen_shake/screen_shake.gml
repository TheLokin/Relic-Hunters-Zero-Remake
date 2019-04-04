/*
 *	screen_shake(amount, [direction])
 *
 *	
 *
 *	amount:
 *	direction:
 *
 *	Return: N/A.
 */

#region Parameters

	var _amount = argument[0];

#endregion

controller_camera.shake_screen += _amount;
if (argument_count == 2) {
	controller_camera.shake_direction = argument[1];
} else {
	controller_camera.shake_direction = irandom(359);
}