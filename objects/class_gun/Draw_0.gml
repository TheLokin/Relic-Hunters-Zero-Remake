/// @description Gun

switch (object_get_parent(owner.object_index)) {
	case class_player:
		var _gun_x = x+lengthdir_x(-image_xscale*current_recoil, image_angle);
		var _gun_y = y+lengthdir_y(-image_xscale*current_recoil, image_angle);
		
		if (!owner.is_digging && owner.current_animation != animation.dig) {
			if (is_selected && is_reloading) {
				draw_sprite_ext(sprite_index, 0, _gun_x, _gun_y, image_xscale, image_yscale, image_angle, c_gray, 1);
			} else {
				draw_sprite_ext(sprite_index, 0, _gun_x, _gun_y, image_xscale, image_yscale, image_angle, c_white, 1);
			}
		}
		if (global.debug && global.gamepad != noone && is_selected) {
			draw_set_color(c_yellow);
			draw_circle(x, y, projectile_range, true);
			draw_set_color(c_red);
			draw_line(x, y, global.player.crosshair_x, global.player.crosshair_y);
		}
	break;
}