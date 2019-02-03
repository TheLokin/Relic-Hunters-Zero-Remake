/// @description Actions

if (!global.pause) {
	if (!is_digging && current_animation != animation.dig) {
		speed = move_speed;
		direction = move_direction;
		var _gamepad = get_gamepad_connected();
	
		if (_gamepad != noone) {
			#region Movement.
			
				var _horizontal_axis = gamepad_axis_value(_gamepad, gp_axislh);
				var _vertical_axis = gamepad_axis_value(_gamepad, gp_axislv);
	
				if (joystick_deadzone_check(_horizontal_axis, _vertical_axis, joy_deadzone)) {
					var _joystick_direction = point_direction(0, 0, _horizontal_axis, _vertical_axis);
					motion_add(_joystick_direction, move_acceleration*delta_time*ms_to_s_60);
				}
			
			#endregion
		} else {
			#region Movement.
			
				if (input_key_up() && !input_key_left() && !input_key_right()) {
					motion_add(90, move_acceleration*delta_time*ms_to_s_60);
				}
				if (input_key_down() && !input_key_left() && !input_key_right()) {
					motion_add(270, move_acceleration*delta_time*ms_to_s_60);
				}
				if (input_key_left() && !input_key_up() && !input_key_down()) {
					motion_add(180, move_acceleration*delta_time*ms_to_s_60);
				}
				if (input_key_right() && !input_key_up() && !input_key_down()) {
					motion_add(0, move_acceleration*delta_time*ms_to_s_60);
				}
				if (input_key_left() && input_key_up()) {
					motion_add(135, move_acceleration*delta_time*ms_to_s_60);
				}
				if (input_key_left() && input_key_down()) {
					motion_add(225, move_acceleration*delta_time*ms_to_s_60);
				}
				if (input_key_right() && input_key_up()) {
					motion_add(45, move_acceleration*delta_time*ms_to_s_60);
				}
				if (input_key_right() && input_key_down()) {
					motion_add(315, move_acceleration*delta_time*ms_to_s_60);
				}
			
			#endregion
			#region Sprint.
			
				if (input_key_sprint() && !is_meleeing) {
					if (is_sprinting && stamina < sprint_stamina) {
						is_sprinting = false;
					} else if (stamina >= sprint_stamina_min) {
						is_sprinting = true;
					}
				}
				if (is_sprinting && (stamina < sprint_stamina || is_meleeing)) {
					is_sprinting = false;
				}
			
			#endregion
			#region Dodge.
			
				if (input_key_sprint_released()) {
					/*if (stamina >= ) {
					
					}*/
				}
			
			#endregion
			// Aim.
			if (input_key_aim() && !is_sprinting && !is_meleeing) {
				is_aiming = true;
			} else {
				is_aiming = false;
			}
		}
	
		#region Friction.
		
			if (is_dodging) {
				motion_add(direction-180, min(speed, dodge_friction*delta_time*ms_to_s_60));
			} else {
				motion_add(direction-180, min(speed, move_friction*delta_time*ms_to_s_60));
			}
		
		#endregion
		#region Speed.
		
			var _speed_vector = 1;
			/*
			if (_gamepad != noone) {
		
			}
			*/
		
			var _move_speed_max = move_speed_max*_speed_vector;
		
			if (!is_sprinting && speed > _move_speed_max) {
				speed -= min(move_acceleration, speed-_move_speed_max)*delta_time*ms_to_s_60;
			}
			var _sprint_speed_max = sprint_speed_max*_speed_vector;
		
			if (is_sprinting && speed > _sprint_speed_max) {
				speed -= min(move_acceleration, speed-_sprint_speed_max)*delta_time*ms_to_s_60;
			}
			var _aiming_speed_max = aiming_speed_max*_speed_vector;
			
			if (is_aiming && speed > _aiming_speed_max) {
				speed -= min(move_acceleration, speed-_aiming_speed_max)*delta_time*ms_to_s_60;
			}
			
		#endregion
		// Melee cancel
		if (is_melee_dashing && speed == 0) {
			is_melee_dashing = false;
		}
		
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
			} else {
				is_sprinting = false;
			}
			
		#endregion
		#region Control stamina.
		
			if (is_sprinting) {
				stamina -= sprint_stamina;
			}
			if (stamina < 0) {
				stamina = 0;
			}
			if (!is_sprinting && !is_dodging && !is_meleeing && !is_throwing) {
				stamina += stamina_regeneration;
			}
			if (stamina > stamina_max) {
				stamina = stamina = stamina_max;
			}
		
		#endregion
		#region Footsteps.
			
			if (current_animation == animation.walk || current_animation == animation.sprint) {
				current_footstep_time += delta_time;
				if (current_footstep_time >= footstep_time) {
					audio_play(audio_emitter, false, 1, sfx_footsteps1, sfx_footsteps2, sfx_footsteps3, sfx_footsteps4, sfx_footsteps5);
					current_footstep_time = 0;
				}
			} else {
				current_footstep_time = 0;
			}
	
		#endregion
		#region Animation.
			
			if (is_meleeing || is_throwing) {
				play_animation(animation.melee, 0.25, an_clamp_forever, pr_high);
			} else {
				if (move_speed > 0) {
					if (is_sprinting) {
						play_animation(animation.sprint, 0.16, an_loop, pr_low);
					} else if (is_dodging) {
						play_animation(animation.dash, 0.16, an_loop, pr_low);
					} else {
						play_animation(animation.walk, 0.16, an_loop, pr_low);
					}
				} else {
					play_animation(animation.idle, 0.16, an_loop, pr_low);
				}
			}
			//depth = -y;
			update_animation();
		
		#endregion
	}
}