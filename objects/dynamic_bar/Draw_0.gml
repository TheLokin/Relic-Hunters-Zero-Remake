/// @description Bar

if (alpha > 0) {
	var _bar_x = owner.x - bar_width/2;
	var _bar_y = owner.y - owner.sprite_height-bar_border;

	draw_set_color(c_black);
	draw_set_color(0.6*alpha);
	draw_rectangle(_bar_x+bar_border, _bar_y+bar_border, _bar_x+bar_width+bar_border, _bar_y+bar_height+bar_border, false);
	#region Shield.
		
		if (draw_shield) {
			var _energy_max = owner.energy_max + owner.overshield;
		
			if (shield_target == owner.energy) {
				if (is_filling_shield_bar) {
					if (shield_delayed != owner.energy) {
						shield_delayed += min(_energy_max*shield_bar_speed, abs(shield_delayed-owner.energy));
					} else {
						is_filling_shield_bar = false;
					}
				} else {
					current_shield_bar_time += delta_time;
					if (current_shield_bar_time >= shield_bar_duration) {
						is_filling_shield_bar = true;
						current_shield_bar_time = 0;
					}
				}
			} else {
				current_shield_bar_time = 0;
				if (is_filling_shield_bar) {
					shield_delayed = shield_target;
					is_filling_shield_bar = false;
				}
			}
			draw_set_alpha(0.9*alpha);
			if (shield_target > owner.energy) {
				draw_healthbar(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, shield_delayed/_energy_max*100,
								c_black, c_white, c_white, 0, false, false);
				draw_healthbar(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, owner.energy/_energy_max*100,
								c_black, c_cadetblue, c_cadetblue, 0, false, false);
			} else {
				draw_healthbar(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, owner.energy/_energy_max*100,
								c_black, c_white, c_white, 0, false, false);
				draw_healthbar(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, shield_delayed/_energy_max*100,
								c_black, c_cadetblue, c_cadetblue, 0, false, false);
			}
			shield_target = owner.energy;
		}
		
	#endregion
	#region Health.
		
		if (draw_health) {
			if (health_target == owner.hp) {
				if (is_filling_health_bar) {
					if (health_delayed != owner.hp) {
						health_delayed += min(owner.hp_max*health_bar_speed, abs(health_delayed-owner.hp));
					} else {
						is_filling_health_bar = false;
					}
				} else {
					current_health_bar_time += delta_time;
					if (current_health_bar_time >= health_bar_duration) {
						is_filling_health_bar = true;
						current_health_bar_time = 0;
					}
				}
			} else {
				current_health_bar_time = 0;
				if (is_filling_health_bar) {
					health_delayed = health_target;
					is_filling_health_bar = false;
				}
			}
			draw_set_alpha(0.9*alpha);
			if (health_target > owner.hp) {
				draw_healthbar(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, health_delayed/owner.hp_max*100,
							   c_black, c_white, c_white, 0, false, false);
				draw_healthbar(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, owner.hp/owner.hp_max*100,
							   c_black, c_firebrick, c_firebrick, 0, false, false);
			} else {
				draw_healthbar(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, owner.hp/owner.hp_max*100,
							   c_black, c_white, c_white, 0, false, false);
				draw_healthbar(_bar_x, _bar_y, _bar_x+bar_width, _bar_y+bar_height, health_delayed/owner.hp_max*100,
							   c_black, c_firebrick, c_firebrick, 0, false, false);
			}
			health_target = owner.hp;
		}
		
	#endregion
}
