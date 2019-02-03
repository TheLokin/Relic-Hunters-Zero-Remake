/// @description Hud

if (instance_exists(class_player)) {
	var _player = instance_find(class_player, 0);
	
	draw_set_valign(fa_center);
	draw_set_halign(fa_right);
	
	#region Health.
		
		var _hp = _player.hp;
		var _hp_max = _player.hp_max;
		var _hud_image = 0;
		
		if (_hp < _hp_max*0.3) {
			_hud_image = 2;
		} else if (_hp < _hp_max*0.6) {
			_hud_image = 1;
		} 
		draw_sprite(_player.sprite_face, _hud_image, 16, 16);
		
		var _health_bar_width = 124;
		var _health_bar_height = 16;
		
		draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(64, 24, 64+_health_bar_width, 24+_health_bar_height, false);
        draw_set_alpha(0.9);
		
		draw_sprite(spr_icon_health, 0, 64, 24);
		draw_set_color(c_white);
		draw_set_font(get_font(ft_medium));
		draw_text(64+_health_bar_width, 24+_health_bar_height/2, string(_hp));
		
        /*draw_healthbar_delayed(delayedCharHealthBar1[playerId], charLifeBarTopX-5,charLifeBarTopY-5,charLifeBarTopX+charLifeBarWidth-5,charLifeBarTopY+charLifeBarHeight-5, hp, hp_max, charLifeColor, c_black, c_white, charBarDelaySpeed, charBarDelayTime, 0, false, false);
        draw_sprite_ext(spr_icon_health,0,charLifeBarTopX+20,charLifeBarTopY+20,1.5,1.5,0,c_white,main_hud_alpha);
        draw_set_color(c_white);
        draw_set_font(global.font_numberLarge);
        draw_text(charLifeBarTopX+charLifeBarWidth-14, charLifeBarTopY+14,string(_hp));*/
	
	#endregion
	#region Shield.
	
		var _energy = _player.energy;
		var _energy_max = _player.energy_max + _player.overshield;
		var _shield_bar_width = 48;
		var _shield_bar_height = 36;
		
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		//draw_rectangle(64, );
	
	#endregion
	#region Stamina.
	
		var _stamina = _player.stamina;
		var _stamina_max = _player.stamina_max;
	
	#endregion
	
	draw_set_alpha(1);
}