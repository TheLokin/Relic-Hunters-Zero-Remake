/*
 *	update_animation()
 *
 *	Run this function in each step to plays the animations.
 *
 *	Returns: N/A.
 */

animation_index += animation_speed;

#region Switch animation.

	switch (current_animation) {
	    case (animation.idle):
	        sprite_index = sprite_idle;
	    break;
	    case (animation.walk):
	        sprite_index = sprite_walk;
	    break;
	    case (animation.sprint):
	        sprite_index = sprite_sprint;
	    break;
	    case (animation.dash):
	        sprite_index = sprite_dash;
	    break;
	    case (animation.hit):
	        sprite_index = sprite_hit;
	    break;
	    case (animation.melee):
	        sprite_index = sprite_melee;
	    break;
	    case (animation.dig):
	        sprite_index = sprite_dig;
	    break;
		case (animation.death):
	        sprite_index = sprite_death;
	    break;
	}
	
#endregion
#region Type control.
	
	var _frames = sprite_get_number(sprite_index)-1;
	
	switch (animation_type) {
		case an_loop:
	        if (animation_index >= _frames) {
				animation_index = 0;
				animation_priority = pr_low;
			}
	    break;
	    case an_clamp:
			var 
	        if (animation_index >= _frames) {
	            animation_index = _frames;
	            animation_priority = pr_low;
	        }
	    break;
	}

#endregion

image_index = animation_index;