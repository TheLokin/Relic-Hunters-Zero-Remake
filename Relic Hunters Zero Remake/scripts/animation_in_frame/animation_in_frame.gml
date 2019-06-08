/*
 *	animation_in_frame(frame)
 *
 *	Check if the animation is in the indicated frame.
 *
 *	frame: frame to check.
 *
 *	Return: boolean.
 */

#region Parameters.
	
	/// @params frame
	var _frame = argument0;

#endregion

return animation_index >= _frame && animation_index < _frame+animation_speed;