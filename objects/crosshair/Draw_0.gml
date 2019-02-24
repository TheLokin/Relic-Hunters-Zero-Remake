/// @description Crosshair

switch (room) {
	case rm_menu1: case rm_menu2: case rm_menu3: case rm_menu4: case rm_menu5: case rm_menu6: case rm_menu7:
		if (global.gamepad == noone) {
			draw_sprite(spr_cursor, 0, mouse_x, mouse_y);
		}
	break;
	default:
		if (!global.pause) {
			if (global.player.weapon_selected.is_reloading) {
				var _reload_image = global.player.weapon_selected.current_reload_time/global.player.weapon_selected.reload_duration*
									sprite_get_number(spr_crosshair_reload);
				
				draw_sprite(spr_crosshair, 3, mouse_x, mouse_y);
				draw_sprite(spr_crosshair_reload, _reload_image, mouse_x, mouse_y);
			} else {
				draw_sprite(spr_crosshair, 0, mouse_x, mouse_y);
			}
		}
	break;
}