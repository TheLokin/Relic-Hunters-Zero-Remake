/*
 *	animation_init(animation, speed, type)
 *
 *	Initialize the animation engine and plays an animation.
 *
 *	animation: the animation to reproduce.
 *	speed: the speed of the animation.
 *	type: determines the duration of the animation.
 *		  an_loop: plays the animation in a constant loop.
 *		  an_clamp: plays the animation once and then stops.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params animation
	var _animation = argument0;
	/// @params speed
	var _speed = argument1;
	/// @params type
	var _type = argument2;

#endregion

image_speed = 0;
current_animation = _animation;
animation_index = 0;
animation_speed = _speed;
animation_type = _type;
animation_priority = pr_low;