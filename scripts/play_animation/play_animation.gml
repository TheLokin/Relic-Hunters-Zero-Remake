/*
 *	play_animation(animation, speed, type, priority, frames)
 *
 *	Try plays an animation if the priority is enough.
 *	
 *	type: there are these three options.
 *		  an_loop: plays the animation in a constant loop.
 *		  an_clamp: plays the animation once and then stops.
 *		  an_clamp_forever: plays the animation once, wait and repeat.
 */

#region Parameters.

	var _animation = argument0;
	var _speed = argument1;
	var _type = argument2;
	var _priority = argument3;
	var _frames = argument4;

#endregion

if (_priority >= animation_priority && current_animation != _animation) {
	current_animation = _animation;
	animation_index = 0;
    animation_speed = _speed;
    animation_type = _type;
    animation_priority = _priority;
	animation_frames = _frames;
}