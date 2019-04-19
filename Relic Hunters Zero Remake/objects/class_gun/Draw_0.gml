/// @description Gun

switch (object_get_parent(owner.object_index)) {
	case class_player:
		if (!owner.is_digging) {
			if (is_selected) {
				if (owner.current_animation != animation.dig) {
					if (is_reloading) {
						draw_sprite_ext(sprite_index, 0, x, y, image_xscale, 1, image_angle, c_gray, 1);
					} else {
						draw_sprite_ext(sprite_index, 0, x, y, image_xscale, 1, image_angle, c_white, 1);
					}
				}
			} else {
				draw_sprite_ext(sprite_index, 0, x+lengthdir_x(-image_xscale*current_recoil, image_angle),
								y+lengthdir_y(-image_xscale*current_recoil, image_angle)+owner.dig_depth, image_xscale,
								1, image_angle, c_white, 1);
			}
		}
		if (global.debug && global.gamepad != noone && is_selected) {
			draw_set_color(c_yellow);
			draw_circle(x, y, projectile_range, true);
			draw_set_color(c_red);
			draw_line(x, y, owner.crosshair_x, owner.crosshair_y);
		}
	break;
}