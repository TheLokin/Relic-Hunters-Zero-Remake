/// @description Hud

if (global.player != noone) {
	draw_set_font(get_font(ft_medium));
	draw_set_valign(fa_center);
	draw_set_halign(fa_right);
	#region Health.
		
		if (global.player.hp < global.player.hp_max*0.3) {
			draw_sprite(global.player.sprite_face, 2, face_x, face_y);
		} else if (global.player.hp < global.player.hp_max*0.6) {
			draw_sprite(global.player.sprite_face, 1, face_x, face_y);
		}  else {
			draw_sprite(global.player.sprite_face, 0, face_x, face_y);
		}
		draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(health_bar_x+bar_border, health_bar_y+bar_border, health_bar_x+health_bar_width+bar_border,
					   health_bar_y+health_bar_height+bar_border, false);
		if (health_target == global.player.hp) {
			if (is_filling_health_bar) {
				if (health_delayed != global.player.hp) {
					health_delayed += min(global.player.hp_max*bar_speed, abs(health_delayed-global.player.hp));
				} else {
					is_filling_health_bar = false;
				}
			} else {
				current_health_bar_time += delta_time;
				if (current_health_bar_time >= bar_duration) {
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
		draw_set_alpha(0.9);
		if (health_target > global.player.hp) {
			draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height,
						   health_delayed/global.player.hp_max*100, c_black, c_white, c_white, 0, false, false);
			draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height,
						   global.player.hp/global.player.hp_max*100, c_black, c_health, c_health, 0, false, false);
		} else {
			draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height,
						   global.player.hp/global.player.hp_max*100, c_black, c_white, c_white, 0, false, false);
			draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height,
						   health_delayed/global.player.hp_max*100, c_black, c_health, c_health, 0, false, false);
		}
		health_target = global.player.hp;
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_sprite(spr_icon_health, 0, health_bar_x+bar_border, health_bar_y+bar_border);
		draw_text(health_text_x, health_text_y, string(round(global.player.hp)));
	
	#endregion
	#region Shield.
		
		var _energy_max = global.player.energy_max + global.player.overshield;
		
		draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(shield_bar_x+bar_border, shield_bar_y+bar_border, shield_bar_x+shield_bar_width+bar_border,
					   shield_bar_y+shield_bar_height+bar_border, false);
		if (shield_target == global.player.energy) {
			if (is_filling_shield_bar) {
				if (shield_delayed != global.player.energy) {
					shield_delayed += min(_energy_max*bar_speed, abs(shield_delayed-global.player.energy));
				} else {
					is_filling_shield_bar = false;
				}
			} else {
				current_shield_bar_time += delta_time;
				if (current_shield_bar_time >= bar_duration) {
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
		draw_set_alpha(0.9);
		if (shield_target > global.player.energy) {
			draw_healthbar(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height,
						   shield_delayed/_energy_max*100, c_black, c_white, c_white, 0, false, false);
			draw_healthbar(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height,
						   global.player.energy/_energy_max*100, c_black, c_shield, c_shield, 0, false, false);
		} else {
			draw_healthbar(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height,
						   global.player.energy/_energy_max*100, c_black, c_white, c_white, 0, false, false);
			draw_healthbar(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height,
						   shield_delayed/_energy_max*100, c_black, c_shield, c_shield, 0, false, false);
		}
		shield_target = global.player.energy;
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_sprite(spr_icon_shield, 0, shield_bar_x+bar_border, shield_bar_y+bar_border);
		draw_text(shield_text_x, shield_text_y, string(round(global.player.energy)));
	
	#endregion
	#region Stamina.
	
		var _stamina_middle = global.player.stamina_max/2;
		var _stamina_secundary = global.player.stamina-_stamina_middle;
		
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		draw_rectangle(stamina_bar_x+bar_border, stamina_bar_y+bar_border, stamina_bar_x+stamina_bar_width+bar_border,
					   stamina_bar_y+stamina_bar_height+bar_border, false);
		draw_set_alpha(1);
		if (global.player.stamina > _stamina_middle) {
			draw_healthbar(stamina_bar_x, stamina_bar_y, stamina_bar_x+stamina_bar_width/2-1, stamina_bar_y+stamina_bar_height,
						   min(1, global.player.stamina/_stamina_middle)*100, c_black, c_white, c_white, 0, false, false);
		} else {
			draw_healthbar(stamina_bar_x, stamina_bar_y, stamina_bar_x+stamina_bar_width/2-1, stamina_bar_y+stamina_bar_height,
						   min(1, global.player.stamina/_stamina_middle)*100, c_black, c_gray, c_gray, 0, false, false);
		}
		if (_stamina_secundary > 0) {
			if (global.player.stamina == global.player.stamina_max) {
				draw_healthbar(stamina_bar_x+stamina_bar_width/2+2, stamina_bar_y, stamina_bar_x+stamina_bar_width,
							   stamina_bar_y+stamina_bar_height, _stamina_secundary/_stamina_middle*100, c_black, c_white,
							   c_white, 0, false, false);
			} else {
				draw_healthbar(stamina_bar_x+stamina_bar_width/2+2, stamina_bar_y, stamina_bar_x+stamina_bar_width,
							   stamina_bar_y+stamina_bar_height, _stamina_secundary/_stamina_middle*100, c_black, c_gray,
							   c_gray, 0, false, false);
			}
		}
	
	#endregion
	#region Weapons.
		
		var _weapon1 = global.player.weapon1;
		var _weapon2 = global.player.weapon2;
		
		if (_weapon1 != noone) {
			if (_weapon1 == global.player.weapon_selected) {
	            draw_sprite_ext(_weapon1.sprite_index, 2, weapon_selected_x+bar_border, weapon_selected_y-_weapon1.sprite_height+bar_border, 2, 2, 0, c_black, 0.8);
	            draw_sprite_ext(_weapon1.sprite_index, 2, weapon_selected_x, weapon_selected_y-_weapon1.sprite_height, 2, 2, 0, _weapon1.color, 1);
			} else {
				draw_sprite_ext(_weapon1.sprite_index, 2, weapon_back_x+bar_border, weapon_back_y-_weapon1.sprite_height+weapon_border, 2, 2, 0, c_black, 0.8);
	            draw_sprite_ext(_weapon1.sprite_index, 2, weapon_back_x, weapon_back_y-_weapon1.sprite_height, 2, 2, 0, _weapon1.color, 1);
			}
        }
		/*if (_weapon2 != noone) {
			if (_weapon2 == global.player.weapon_selected) {
	            draw_sprite_ext(_weapon2.sprite_index, 2, weapon_selected_x+bar_border, weapon_selected_y-_weapon2.sprite_height+bar_border, 2, 2, 0, c_black, 0.8);
	            draw_sprite_ext(_weapon2.sprite_index, 2, weapon_selected_x, weapon_selected_y-_weapon2.sprite_height, 2, 2, 0, _weapon2.color, 1);
			} else {
				draw_sprite_ext(_weapon2.sprite_index, 2, weapon_back_x+bar_border, weapon_back_y-_weapon2.sprite_height+bar_border, 2, 2, 0, c_black, 0.8);
	            draw_sprite_ext(_weapon2.sprite_index, 2, weapon_back_x, weapon_back_y-_weapon2.sprite_height, 2, 2, 0, _weapon2.color, 1);
			}
        }*/
 
	#endregion
	draw_set_alpha(1);
}