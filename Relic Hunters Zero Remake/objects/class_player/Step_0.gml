/// @description Actions

if (!global.pause) {
	if (allow_movement && !is_digging && current_animation != animation.dig) {
		speed = move_speed;
		direction = move_direction;
		var _dash_direction = noone;
		
		#region Movement.
			
			if (global.gamepad != noone) {
				var _horizontal_axis = gamepad_axis_value(global.gamepad, gp_axislh);
				var _vertical_axis = gamepad_axis_value(global.gamepad, gp_axislv);
	
				if (joystick_deadzone_check(_horizontal_axis, _vertical_axis, joy_deadzone)) {
					_dash_direction = point_direction(0, 0, _horizontal_axis, _vertical_axis);
					motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
				}
			} else if (keyboard_check(global.keyboard_up) && !keyboard_check(global.keyboard_down) &&
					   !keyboard_check(global.keyboard_left) && !keyboard_check(global.keyboard_right)) {
				_dash_direction = 90;
				motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
			} else if (!keyboard_check(global.keyboard_up) && keyboard_check(global.keyboard_down) &&
					   !keyboard_check(global.keyboard_left) && !keyboard_check(global.keyboard_right)) {
				_dash_direction = 270;
				motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
			} else if (!keyboard_check(global.keyboard_up) && !keyboard_check(global.keyboard_down) &&
					   keyboard_check(global.keyboard_left) && !keyboard_check(global.keyboard_right)) {
				_dash_direction = 180;
				motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
			} else if (!keyboard_check(global.keyboard_up) && !keyboard_check(global.keyboard_down) &&
					   !keyboard_check(global.keyboard_left) && keyboard_check(global.keyboard_right)) {
				_dash_direction = 0;
				motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
			} else if (keyboard_check(global.keyboard_up) && !keyboard_check(global.keyboard_down) &&
					   keyboard_check(global.keyboard_left) && !keyboard_check(global.keyboard_right)) {
				_dash_direction = 135;
				motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
			} else if (!keyboard_check(global.keyboard_up) && keyboard_check(global.keyboard_down) &&
					   keyboard_check(global.keyboard_left) && !keyboard_check(global.keyboard_right)) {
				_dash_direction = 225;
				motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
			} else if (keyboard_check(global.keyboard_up) && !keyboard_check(global.keyboard_down) &&
					   !keyboard_check(global.keyboard_left) && keyboard_check(global.keyboard_right)) {
				_dash_direction = 45;
				motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
			} else if (!keyboard_check(global.keyboard_up) && keyboard_check(global.keyboard_down) &&
					   !keyboard_check(global.keyboard_left) && keyboard_check(global.keyboard_right)) {
				_dash_direction = 315;
				motion_add(_dash_direction, move_acceleration*delta_time*ms_to_s_60);
			}
			
		#endregion
		#region Sprint.
			
			if (!is_dashing) {
				if (keyboard_check(global.keyboard_sprint) || gamepad_button_check(global.gamepad, global.gamepad_sprint) ||
					global.double_tap && (keyboard_check(global.keyboard_dash) || gamepad_button_check(global.gamepad, global.gamepad_dash))) {
					if (is_sprinting && stamina < sprint_stamina) {
						is_sprinting = false;
						alarm[1] = sprint_delay;
					} else if (can_sprint && stamina >= sprint_stamina_min) {
						is_sprinting = true;
						can_sprint = false;
					}
				} else if (keyboard_check_released(global.keyboard_sprint) || gamepad_button_check_released(global.gamepad, global.gamepad_sprint) ||
						   global.double_tap && (keyboard_check_released(global.keyboard_dash) || gamepad_button_check_released(global.gamepad, global.gamepad_dash))) {
					is_sprinting = false;
					alarm[1] = sprint_delay;
				}
			}
			
		#endregion
		#region Dash.
			
			if (is_dashing) {
				current_dash_time += delta_time;
				if (current_dash_time >= dash_duration) {
					is_dashing = false;
					current_dash_time = 0;
				}
			} else {
				var _dash_pressed = false;
				
				if (global.double_tap) {
					if (keyboard_check_doubletap(global.keyboard_dash) || gamepad_button_check_doubletap(global.gamepad, global.gamepad_dash)) {
						_dash_pressed = true;
					}
				} else if (keyboard_check(global.keyboard_dash) || gamepad_button_check(global.gamepad, global.gamepad_dash)) {
					_dash_pressed = true;
				}
				if (_dash_pressed && stamina >= dash_stamina) {
					is_dashing = true;
					stamina -= dash_stamina;
					speed = dash_speed;
					if (_dash_direction != noone) {
						direction = _dash_direction;
					} else {
						direction = 180+point_direction(x, y, crosshair_x, crosshair_y);
					}
					create_dash_fx(sprite_dash_fx, id);
				}
			}
			
		#endregion
		#region Melee.
			
			/*if (is_meleeing && current_animation != animation.melee) {
				is_meleeing = false;
			}
			if (!is_meleeing && keyboard_check(ord("X"))) {
				is_meleeing = true;
			}*/
			
		#endregion
		// Aim.
		if (!is_sprinting && !is_meleeing && mouse_check_button(global.mouse_aim)) {
			is_aiming = true;
		} else {
			is_aiming = false;
		}
		
		// Melee cancel
		if (is_melee_dashing && speed == 0) {
			is_melee_dashing = false;
		}
		
		#region Grenade.
		
			if (!is_meleeing && (keyboard_check_pressed(global.keyboard_grenade) || gamepad_button_check_pressed(global.gamepad, global.gamepad_grenade))) {
				//is_throwing = true;
			}
		
		#endregion
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
				
				if (place_meeting(x+_target_x, y, obj_collision)) {
					while (!place_meeting(x+sign(_target_x), y, obj_collision)) {
						x += sign(_target_x);
					}
				} else {
					x += _target_x;
				}
				if (place_meeting(x, y+_target_y, obj_collision)) {
					while (!place_meeting(x, y+sign(_target_y), obj_collision)) {
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
		#region Crosshair and orientation.
		
			if (global.gamepad != noone) {
				var _enemy = find_enemy(weapon_selected.x, weapon_selected.y, weapon_selected.projectile_range);
				
				if (_enemy != noone) {
					var _enemy_x = object_get_xcenter(_enemy);
					var _enemy_y = object_get_ycenter(_enemy);
					var _crosshair_distance = point_distance(weapon_selected.x, weapon_selected.y, _enemy_x, _enemy_y);
					
					crosshair_direction = point_direction(weapon_selected.x, weapon_selected.y, _enemy_x, _enemy_y);
				} else {
					var _crosshair_distance = weapon_selected.projectile_range;
					var _crosshair_target_direction = crosshair_direction;
					
					if (!is_aiming) {
						var _horizontal_axis_right = gamepad_axis_value(global.gamepad, gp_axisrh);
						var _vertical_axis_right = gamepad_axis_value(global.gamepad, gp_axisrv);
					
						if (joystick_deadzone_check(_horizontal_axis_right, _vertical_axis_right, joy_deadzone)) {
							_crosshair_target_direction = point_direction(weapon_selected.x, weapon_selected.y,
																		  weapon_selected.x+_horizontal_axis_right,
																		  weapon_selected.y+_vertical_axis_right);
						} else {
							var _horizontal_axis_left = gamepad_axis_value(global.gamepad, gp_axislh);
							var _vertical_axis_left = gamepad_axis_value(global.gamepad, gp_axislv);
					
							if (joystick_deadzone_check(_horizontal_axis_left, _vertical_axis_left, joy_deadzone)) {
								_crosshair_target_direction = point_direction(weapon_selected.x, weapon_selected.y,
																			  weapon_selected.x+_horizontal_axis_left,
																			  weapon_selected.y+_vertical_axis_left);
							}
						}
					}
					crosshair_direction = angle_rotate(crosshair_direction, _crosshair_target_direction, 20);
				}
				var _target_x = weapon_selected.x+lengthdir_x(_crosshair_distance, crosshair_direction);
			    var _target_y = weapon_selected.y+lengthdir_y(_crosshair_distance, crosshair_direction);
			    var _target_distance = point_distance(crosshair_x, crosshair_y, _target_x, _target_y);
				var _target_direction = point_direction(crosshair_x, crosshair_y, _target_x, _target_y);
			    
				crosshair_x += lengthdir_x(_target_distance, _target_direction);
				crosshair_y += lengthdir_y(_target_distance, _target_direction);
				if (crosshair_direction > 90 && crosshair_direction <= 270) {
					image_xscale = -1;
				} else {
					image_xscale = 1;
				}
			} else {
				crosshair_x = mouse_x;
				crosshair_y = mouse_y;
				if (x > mouse_x) {
					image_xscale = -1;
				} else {
					image_xscale = 1;
				}
			}
		
		#endregion
	}
	#region Stamina.
		
		if (is_sprinting && !is_dashing && !is_digging) {
			stamina -= sprint_stamina;
			if (stamina < 0) {
				stamina = 0;
			}
		}
		if ((!is_sprinting || is_digging) && !is_dashing && !is_meleeing && !is_throwing) {
			stamina += stamina_regeneration;
			if (stamina > stamina_max) {
				stamina = stamina_max;
			}
		}
		
	#endregion
	#region Interaction.
		
		if (keyboard_check_pressed(global.keyboard_interaction) || gamepad_button_check_pressed(global.gamepad, global.gamepad_interaction)) {
			is_interacting = true;
		}
		
	#endregion
	#region Weapon.
			
		if (weapon2 != noone && (keyboard_check_pressed(global.keyboard_switch) || mouse_wheel_up() || mouse_wheel_down() ||
			gamepad_button_check_pressed(global.gamepad, global.gamepad_switch))) {
			if (audio_is_playing(sfx_reload_loop1)) {
				audio_stop_sound(sfx_reload_loop1);
			}
			if (audio_is_playing(sfx_reload_loop2)) {
				audio_stop_sound(sfx_reload_loop2);
			}
			if (audio_is_playing(sfx_reload_loop3)) {
				audio_stop_sound(sfx_reload_loop3);
			}
			if (weapon_selected == weapon1) {
				weapon1.is_selected = false;
				weapon2.is_selected = true;
				weapon_selected = weapon2;
			} else {
				weapon2.is_selected = false;
				weapon1.is_selected = true;
				weapon_selected = weapon1;
			}
			audio_play(audio_emitter, false, pr_low, sfx_weapon_switch);
		}
		
	#endregion
	#region Dig.
	
		if (instance_exists(obj_dig_spot)) {
			if (!is_dashing && !weapon_selected.is_reloading && current_animation != animation.dig &&
				(keyboard_check_pressed(global.keyboard_interaction) || gamepad_button_check_pressed(global.gamepad, global.gamepad_interaction))) {
				move_speed = 0;
				animation_play(animation.dig, 0.12, an_clamp, pr_hight);
				if (place_meeting(x, y, obj_dig_spot)) {
					is_digging = true;
					dig_depth += dig_speed;
					//create_coin_fx(id, 1, 2);
				} else {
					create_detector_fx(id);
				}
			}
			if (is_digging && dig_depth >= obj_dig_spot.dig_depth) {
				is_digging = false;
				dig_depth = 0;
				instance_destroy(obj_dig_spot);
			}
		}
	
	#endregion
	#region Animation.
		
		if (is_meleeing || is_throwing) {
			animation_play(animation.melee, 0.25, an_clamp, pr_hight);
		} else if (move_speed > 0) {
			if (is_sprinting) {
				animation_play(animation.sprint, 0.16, an_loop, pr_low);
			} else if (is_dashing) {
				animation_play(animation.dash, 0.16, an_loop, pr_low);
			} else {
				animation_play(animation.walk, 0.16, an_loop, pr_low);
			}
		} else {
			animation_play(animation.idle, 0.16, an_loop, pr_low);
		}
		animation_update();
		switch (current_animation) {
			case animation.melee:
				if (animation_in_frame(5)) {
					var _melee = instance_create_layer(x,y,"Interactive",fx_melee_arc);
					
					_melee.owner = id;
				}
			break;
			case animation.dig:
				if (animation_in_frame(2)) {
					create_dirt_fx(id, 6, 8);
					audio_play(audio_emitter, false, pr_hight, sfx_detector_far);
				}
			break;
		}
		
	#endregion
	#region Sound.
		
		audio_emitter_position(audio_emitter, x, y, 0);
		audio_emitter_falloff(audio_emitter, 100, 300, 1);
		
	#endregion
	#region Footsteps and sprint effect.
			
		switch (current_animation) {
			case animation.walk:
				current_footstep_time += delta_time;
				if (current_footstep_time >= walk_footstep_duration) {
					audio_play(audio_emitter, false, pr_low, choose(sfx_footsteps1, sfx_footsteps2, sfx_footsteps3, sfx_footsteps4,
								sfx_footsteps5));
					current_footstep_time = 0;
				}
			break;
			case animation.sprint:
				current_footstep_time += delta_time;
				if (current_footstep_time >= sprint_footstep_duration) {
					audio_play(audio_emitter, false, pr_low, choose(sfx_footsteps1, sfx_footsteps2, sfx_footsteps3, sfx_footsteps4,
								sfx_footsteps5));
					current_footstep_time = 0;
				}
				/*if (current_animation != animation.sprint) {
					audio_play(audio_emitter, false, pr_low, sfx_sprint);
				}*/
				current_sprint_time += delta_time;
				if (current_sprint_time >= sprint_duration) {
					current_sprint_time = 0;
					create_sprint_fx(sprite_sprint_fx, id);
				}
			break;
			default:
				current_footstep_time = 0;
			break;
		}
	
	#endregion
}