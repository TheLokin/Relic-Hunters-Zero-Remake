/// @description Gun

switch (object_get_parent(owner.object_index)) {
	case class_player:
		var _gun_x = x+lengthdir_x(-1*image_xscale*current_recoil, image_angle);
		var _gun_y = y+lengthdir_y(-1*image_xscale*current_recoil, image_angle);
		
		if (!owner.is_digging && owner.current_animation != animation.dig) {
			if (is_reloading) {
				var _blend = c_gray;
			} else {
				var _blend = c_white;
			}
		}
		draw_sprite_ext(sprite_index, 0, _gun_x, _gun_y, image_xscale, image_yscale, image_angle, _blend, 1);
	break;
}