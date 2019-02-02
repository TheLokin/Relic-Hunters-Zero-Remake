/*
 *	update_animation()
 *
 *	Run this function in each step to plays the animations.
 */

animation_index += animation_speed;

#region Type control.

	switch (animation_type) {
		case an_loop:
	        if (animation_index >= animation_frames-1) {
				animation_index = 0;
			}
	    break;
	    case an_clamp:
	        if (animation_index >= animation_frames-1) {
	            animation_index = animation_frames-1;
	            animation_priority = 0;
	        }
	    break;
	    case an_clamp_forever:
	        if (animation_index >= animation_frames-1) {
	            animation_index = animation_frames-1;
	        }
	    break;
	}

#endregion
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

image_index = animation_index;