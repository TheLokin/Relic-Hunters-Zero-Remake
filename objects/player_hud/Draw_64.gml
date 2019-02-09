/// @description Hud

if (global.player != noone) {
	draw_set_valign(fa_center);
	draw_set_halign(fa_right);
	
	#region Health.
		
		var _hp = global.player.hp;
		var _hp_max = global.player.hp_max;
		var _hud_image = 0;
		
		if (_hp < _hp_max*0.3) {
			_hud_image = 2;
		} else if (_hp < _hp_max*0.6) {
			_hud_image = 1;
		} 
		draw_sprite(global.player.sprite_face, _hud_image, face_x, face_y);
		draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height, false);
        draw_set_alpha(0.9);
		var _delay_speed = 0.008;
		var _delay_time = room_speed*0.6;
		var _delay_value = 0;
		
		if (true) {
			draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height, _hp/_hp_max*100, c_black, c_white, c_white, 0, false, false);
			draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height, _delay_value/_hp_max*100, c_black, c_health, c_health, 0, false, false);
		} else {
			draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height, _delay_value/_hp_max*100, c_black, c_health, c_health, 0, false, false);
			draw_healthbar(health_bar_x, health_bar_y, health_bar_x+health_bar_width, health_bar_y+health_bar_height, _hp/_hp_max*100, c_black, c_white, c_white, 0, false, false);
		}
		draw_sprite(spr_icon_health, 0, health_bar_x, health_bar_y);
		draw_set_color(c_white);
		draw_set_font(get_font(ft_medium));
		draw_text(health_text_x, health_text_y, string(round(_hp)));
	
	#endregion
	#region Shield.
	
		var _energy = global.player.energy;
		var _energy_max = global.player.energy_max + global.player.overshield;
		
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		draw_rectangle(shield_bar_x, shield_bar_y, shield_bar_x+shield_bar_width, shield_bar_y+shield_bar_height, false);
		draw_set_alpha(0.9);
		
		draw_sprite(spr_icon_shield, 0, shield_bar_x, shield_bar_y);
		draw_set_color(c_white);
		draw_set_font(get_font(ft_medium));
		draw_text(shield_text_x, shield_text_y, string(round(_hp)));
	
	#endregion
	#region Stamina.
	
		var _stamina = global.player.stamina;
		var _stamina_max = global.player.stamina_max;
		
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		draw_rectangle(stamina_bar_x, stamina_bar_y, stamina_bar_x+stamina_bar_width, stamina_bar_y+stamina_bar_height, false);
		if (_stamina > _stamina_max/2) {
			var _stamina_color = c_white;
		} else {
			var _stamina_color = c_gray;
		}
		draw_healthbar(stamina_bar_x+stamina_border, stamina_bar_y+stamina_border, stamina_bar_x+stamina_bar_width/2-stamina_border,
					   stamina_bar_y+stamina_bar_height-stamina_border, min(1, _stamina/(_stamina_max/2))*100, c_black,
					   _stamina_color, _stamina_color, 0, false, false);
		var _stamina_secundary = _stamina-_stamina_max/2;
		
		if (_stamina_secundary > 0) {
			if (_stamina == _stamina_max) {
				_stamina_color = c_white;
			} else {
				_stamina_color = c_gray;
			}
			draw_healthbar(stamina_bar_x+stamina_bar_width/2+stamina_border, stamina_bar_y+stamina_border,
						   stamina_bar_x+stamina_bar_width-stamina_border, stamina_bar_y+stamina_bar_height-stamina_border,
						   _stamina_secundary/(_stamina_max/2)*100, c_black, _stamina_color, _stamina_color, 0, false, false);
		} 
	
	#endregion
	
	draw_set_alpha(1);
}