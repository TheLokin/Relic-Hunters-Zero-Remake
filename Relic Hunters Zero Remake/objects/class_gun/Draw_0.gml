/// @description Gun

if (owner != noone) {
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
		break;
	}
} else {
	draw_sprite(sprite_index, 0, x, y);
}