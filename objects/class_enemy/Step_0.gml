/// @description Actions

if (!global.pause) {
	#region Movement.
	
		//path_update();
	
	#endregion
	#region AI.
		
		if (hit_taken) {
			want_activate_ai = true;
		}
		if (!is_ai_active) {
			if (!want_activate_ai) {
				var _player = instance_nearest(x, y, class_player);
			
				if (_player != noone && point_distance(x, y, _player.x, _player.y) < action_range &&
					collision_line(x, y, _player.x, _player.y, class_collision, false, true)) {
					want_activate_ai = true;
				}
			}
			if (want_activate_ai) {
				is_ai_active = true;
				create_detection_fx(id);
				want_activate_ai = false;
			}
		}
		
		if (is_ai_active) {
		
		}
	
	#endregion
	#region Collisions.
		
		move_speed = speed;
		speed = 0;
		move_direction = direction;
		direction = 0;
			
		if (move_speed > 0) {
			var _target_x = lengthdir_x(move_speed*delta_time*ms_to_s_60, move_direction);
			var _target_y = lengthdir_y(move_speed*delta_time*ms_to_s_60, move_direction);
				
			if (place_meeting(x+_target_x, y, class_collision)) {
				while (!place_meeting(x+sign(_target_x), y, class_collision)) {
					x += sign(_target_x);
				}
			} else {
				x += _target_x;
			}
			if (_target_x != 0) { 
				image_xscale = sign(_target_x);
			}
			if (place_meeting(x, y+_target_y, class_collision)) {
				while (!place_meeting(x, y+sign(_target_y), class_collision)) {
					y += sign(_target_y);
				}
			} else {
				y += _target_y;
			}
		}
			
	#endregion
	#region Animation.
			
		if (is_throwing) {
			play_animation(animation.melee, 0.25, an_clamp_forever, pr_high);
		} else if (move_speed > 0) {
			if (is_dashing) {
				if (current_animation != animation.dash) {
					create_dash_fx(id);
					audio_play(audio_emitter, false, pr_high, sfx_dash1, sfx_dash2, sfx_dash3);
				}
				play_animation(animation.dash, 0.16, an_loop, pr_low);
			} else {
				play_animation(animation.walk, 0.16, an_loop, pr_low);
			}
		} else {
			play_animation(animation.idle, 0.16, an_loop, pr_low);
		}
		//depth = -y;
		update_animation();
		
	#endregion
	#region Sound.
		
		audio_emitter_position(audio_emitter, x, y, 0);
		
	#endregion
}