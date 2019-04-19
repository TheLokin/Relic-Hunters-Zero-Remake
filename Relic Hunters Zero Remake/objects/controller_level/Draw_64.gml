/// @description Hud

draw_set_font(font);
draw_set_valign(fa_center);
draw_set_halign(fa_right);
#region Health.
		
	if (global.player1.hp < global.player1.hp_max*0.3) {
		draw_sprite(global.player1.sprite_face, 2, face_x, face_y);
	} else if (global.player1.hp < global.player1.hp_max*0.6) {
		draw_sprite(global.player1.sprite_face, 1, face_x, face_y);
	}  else {
		draw_sprite(global.player1.sprite_face, 0, face_x, face_y);
	}
	draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(health_bar_x+health_bar_border, health_bar_y+health_bar_border,
					health_bar_x+health_bar_width+health_bar_border,
					health_bar_y+health_bar_height+health_bar_border, false);
	if (health_target == global.player1.hp) {
		if (is_filling_health_bar) {
			if (health_delayed != global.player1.hp) {
				health_delayed += min(global.player1.hp_max*health_bar_speed, abs(health_delayed-global.player1.hp));
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
	draw_set_alpha(0.9);
	if (health_target > global.player1.hp) {
		draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height,
						health_delayed/global.player1.hp_max*100, c_black, c_white, c_white, 0, false, false);
		draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height,
						global.player1.hp/global.player1.hp_max*100, c_black, c_firebrick, c_firebrick, 0, false, false);
	} else {
		draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height,
						global.player1.hp/global.player1.hp_max*100, c_black, c_white, c_white, 0, false, false);
		draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height,
						health_delayed/global.player1.hp_max*100, c_black, c_firebrick, c_firebrick, 0, false, false);
	}
	health_target = global.player1.hp;
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(spr_icon_health, 0, health_bar_x+health_bar_border, health_bar_y+health_bar_border);
	draw_text(health_text_x, health_text_y, string(round(global.player1.hp)));
	
#endregion
#region Shield.
		
	var _energy_max = global.player1.energy_max + global.player1.overshield;
		
	draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(shield_bar_x+shield_bar_border, shield_bar_y+shield_bar_border,
					shield_bar_x+shield_bar_width+shield_bar_border,
					shield_bar_y+shield_bar_height+shield_bar_border, false);
	if (shield_target == global.player1.energy) {
		if (is_filling_shield_bar) {
			if (shield_delayed != global.player1.energy) {
				shield_delayed += min(_energy_max*shield_bar_speed, abs(shield_delayed-global.player1.energy));
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
	draw_set_alpha(0.9);
	if (shield_target > global.player1.energy) {
		draw_healthbar(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height,
						shield_delayed/_energy_max*100, c_black, c_white, c_white, 0, false, false);
		draw_healthbar(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height,
						global.player1.energy/_energy_max*100, c_black, c_cadetblue, c_cadetblue, 0, false, false);
	} else {
		draw_healthbar(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height,
						global.player1.energy/_energy_max*100, c_black, c_white, c_white, 0, false, false);
		draw_healthbar(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height,
						shield_delayed/_energy_max*100, c_black, c_cadetblue, c_cadetblue, 0, false, false);
	}
	shield_target = global.player1.energy;
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(spr_icon_shield, 0, shield_bar_x+shield_bar_border, shield_bar_y+shield_bar_border);
	draw_text(shield_text_x, shield_text_y, string(round(global.player1.energy)));
	
#endregion
#region Stamina.
	
	var _stamina_middle = global.player1.stamina_max/2;
	var _stamina_secundary = global.player1.stamina-_stamina_middle;
		
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(stamina_bar_x+stamina_bar_border, stamina_bar_y+stamina_bar_border,
					stamina_bar_x+stamina_bar_width+stamina_bar_border,
					stamina_bar_y+stamina_bar_height+stamina_bar_border, false);
	draw_set_alpha(1);
	if (global.player1.stamina > _stamina_middle) {
		draw_healthbar(stamina_bar_x, stamina_bar_y, stamina_bar_x+stamina_bar_width/2-1, stamina_bar_y+stamina_bar_height,
						min(1, global.player1.stamina/_stamina_middle)*100, c_black, c_white, c_white, 0, false, false);
	} else {
		draw_healthbar(stamina_bar_x, stamina_bar_y, stamina_bar_x+stamina_bar_width/2-1, stamina_bar_y+stamina_bar_height,
						min(1, global.player1.stamina/_stamina_middle)*100, c_black, c_gray, c_gray, 0, false, false);
	}
	if (_stamina_secundary > 0) {
		if (global.player1.stamina == global.player1.stamina_max) {
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
		
	if (global.player1.weapon1 != noone) {
		if (global.player1.weapon1 == global.player1.weapon_selected) {
	        draw_sprite_ext(global.player1.weapon1.sprite_index, 2, weapon_selected_x+weapon_bar_border,
							weapon_selected_y+weapon_bar_border, 2, 2, 0, c_black, 0.8);
	        draw_sprite_ext(global.player1.weapon1.sprite_index, 2, weapon_selected_x,
							weapon_selected_y, 2, 2, 0, global.player1.weapon1.color, 1);
		} else {
			draw_sprite_ext(global.player1.weapon1.sprite_index, 2, weapon_back_x,
							weapon_back_y, 2, 2, 0, global.player1.weapon1.color, 0.8);
		}
    }
	if (global.player1.weapon2 != noone) {
		if (global.player1.weapon2 == global.player1.weapon_selected) {
	        draw_sprite_ext(global.player1.weapon2.sprite_index, 2, weapon_selected_x+weapon_bar_border,
							weapon_selected_y+weapon_bar_border, 2, 2, 0, c_black, 0.8);
	        draw_sprite_ext(global.player1.weapon2.sprite_index, 2, weapon_selected_x,
							weapon_selected_y, 2, 2, 0, global.player1.weapon2.color, 1);
		} else {
	        draw_sprite_ext(global.player1.weapon2.sprite_index, 2, weapon_back_x,
							weapon_back_y, 2, 2, 0, global.player1.weapon2.color, 0.8);
		}
    }
 
#endregion