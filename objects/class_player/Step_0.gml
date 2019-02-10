/// @description Actions

if (!global.pause) {
	if (!is_digging && current_animation != animation.dig) {
		speed = move_speed;
		direction = move_direction;
		var _dash_direction = noone;
		
		#region Movement.
			
			if (gamepad_check(global.gamepad)) {
				var _horizontal_axis = gamepad_axis_value(global.gamepad, gp_axislh);
				var _vertical_axis = gamepad_axis_value(global.gamepad, gp_axislv);
	
				if (joystick_deadzone_check(_horizontal_axis, _vertical_axis, joy_deadzone)) {
					_dash_direction = point_direction(0, 0, _horizontal_axis, _vertical_axis);
					
					motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
				}
			} else {
				if (input_keyboard_up() && !input_keyboard_down() && !input_keyboard_left() && !input_keyboard_right()) {
					motion_add(90, move_acceleration*delta_time*ms_to_s_60);
					_dash_direction = 90;
				}
				if (!input_keyboard_up() && input_keyboard_down() && !input_keyboard_left() && !input_keyboard_right()) {
					motion_add(270, move_acceleration*delta_time*ms_to_s_60);
					_dash_direction = 270;
				}
				if (!input_keyboard_up() && !input_keyboard_down() && input_keyboard_left() && !input_keyboard_right()) {
					motion_add(180, move_acceleration*delta_time*ms_to_s_60);
					_dash_direction = 180;
				}
				if (!input_keyboard_up() && !input_keyboard_down() && !input_keyboard_left() && input_keyboard_right()) {
					motion_add(0, move_acceleration*delta_time*ms_to_s_60);
					_dash_direction = 0;
				}
				if (input_keyboard_up() && !input_keyboard_down() && input_keyboard_left() && !input_keyboard_right()) {
					motion_add(135, move_acceleration*delta_time*ms_to_s_60);
					_dash_direction = 135;
				}
				if (!input_keyboard_up() && input_keyboard_down() && input_keyboard_left() && !input_keyboard_right()) {
					motion_add(225, move_acceleration*delta_time*ms_to_s_60);
					_dash_direction = 225;
				}
				if (input_keyboard_up() && !input_keyboard_down() && !input_keyboard_left() && input_keyboard_right()) {
					motion_add(45, move_acceleration*delta_time*ms_to_s_60);
					_dash_direction = 45;
				}
				if (!input_keyboard_up() && input_keyboard_down() && !input_keyboard_left() && input_keyboard_right()) {
					motion_add(315, move_acceleration*delta_time*ms_to_s_60);
					_dash_direction = 315;
				}
			}
			
		#endregion
		#region Sprint.
			
			if (!is_meleeing && (input_keyboard_sprint() || input_gamepad_sprint())) {
				if (is_sprinting && stamina < sprint_stamina) {
					is_sprinting = false;
					alarm[1] = sprint_delay;
				} else if (can_sprint && stamina >= sprint_stamina_min) {
					is_sprinting = true;
					can_sprint = false;
				}
			} else if (input_keyboard_sprint_released() || input_gamepad_sprint_released()) {
				is_sprinting = false;
				alarm[1] = sprint_delay;
			}
			
		#endregion
		#region Dash.
			
			var _can_dash = false;
			
			if (global.double_tap) {
				if (input_keyboard_dash_pressed() || input_gamepad_dash_pressed()) {
					double_tap_timer++;
					double_tap_interval = 0;
				} else {
					double_tap_interval++;
				}
				if (!is_dashing && double_tap_interval >= 30) {
					double_tap_timer = 0;
					double_tap_interval = 0;
				}
				if (double_tap_timer >= 2 && (input_keyboard_dash() || input_gamepad_dash())) {
					double_tap_timer = 0;
					double_tap_interval = 0;
					_can_dash = true;
				}
			} else if (input_keyboard_dash() || input_gamepad_dash()) {
				_can_dash = true;
			}
			if (_can_dash && _dash_direction != noone && stamina >= dash_stamina) {
				is_dashing = true;
				stamina -= dash_stamina;
				speed = dash_speed;
				direction = _dash_direction;
			}
			if (is_dashing) {
				current_dash_time += delta_time;
				if (current_dash_time >= dash_duration) {
					is_dashing = false;
					current_dash_time = 0;
				}
			}
			
		#endregion
		// Aim.
		if (!is_sprinting && !is_meleeing && input_keyboard_aim()) {
			is_aiming = true;
		} else {
			is_aiming = false;
		}
		
		// Melee cancel
		if (is_melee_dashing && speed == 0) {
			is_melee_dashing = false;
		}
		
		#region Speed.
		
			if (!is_sprinting && speed > walk_speed_max) {
				speed -= min(move_acceleration, speed-walk_speed_max)*delta_time*ms_to_s_60;
			}
			if (is_sprinting && speed > sprint_speed_max) {
				speed -= min(move_acceleration, speed-sprint_speed_max)*delta_time*ms_to_s_60;
			}
			if (is_aiming && speed > aiming_speed_max) {
				speed -= min(move_acceleration, speed-aiming_speed_max)*delta_time*ms_to_s_60;
			}
			
		#endregion
		#region Friction.
		
			if (is_dashing) {
				motion_add(direction-180, min(speed, dash_friction*delta_time*ms_to_s_60));
			} else {
				motion_add(direction-180, min(speed, move_friction*delta_time*ms_to_s_60));
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
			} else {
				is_sprinting = false;
				alarm[1] = sprint_delay;
			}
			
		#endregion
		#region Health.
		
			if (hp >= hp_max) {
				hp = hp_max;
			}
		
		#endregion
		#region Shield.
		
		
		
		#endregion
		#region Stamina.
		
			if (is_sprinting) {
				stamina -= sprint_stamina;
				if (stamina < 0) {
					stamina = 0;
				}
			}
			if (!is_sprinting && !is_dashing && !is_meleeing && !is_throwing) {
				stamina += stamina_regeneration;
				if (stamina > stamina_max) {
					stamina = stamina_max;
				}
			}
		
		#endregion
		#region Animation.
			
			if (is_meleeing || is_throwing) {
				play_animation(animation.melee, 0.25, an_clamp_forever, pr_high);
			} else if (move_speed > 0) {
				if (is_sprinting) {
					if (current_animation != animation.sprint) {
						create_sprint_fx(id);
					}
					play_animation(animation.sprint, 0.16, an_loop, pr_low);
				} else if (is_dashing) {
					if (current_animation != animation.dash) {
						create_dash_fx(id);
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
	}
	
	#region Dig.
		
		if (global.relic_detected) {
			
		}
		if (is_digging && dig_depth >= dig_depth_max) {
			is_digging = false;
			dig_depth = 0;
			current_dig_rate = dig_rate;
			global.relic_detected = false;
		}
	
	#endregion
}