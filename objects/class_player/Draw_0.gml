/// @description Player

if (is_digging) {
	draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width*image_xscale, sprite_height-dig_depth,
						 x-sprite_xoffset, y-sprite_yoffset+dig_depth, image_xscale, image_yscale, c_white, 1);
	
	//if (current_animation != animation.dig) {
	//	draw_sprite_ext(spr_shovel, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
	//} else {
		draw_sprite_part_ext(spr_shovel, image_index, 0, 0, sprite_width*image_xscale, sprite_height-dig_depth,
							 x-sprite_xoffset, y-sprite_yoffset+dig_depth, image_xscale, image_yscale, c_white, 1);
	//}
	//var _dig_progress = dig_depth_max/3;
	
	/*if (dig_depth >= _dig_progress*2) {
		draw_sprite_ext(spr_dig_pile, 2, x, y, 1, 1, 0, global.dirt_color, 1);
	} else if (dig_depth >= _dig_progress) {
		draw_sprite_ext(spr_dig_pile, 1, x, y, 1, 1, 0, global.dirt_color, 1);
	} else {
		draw_sprite_ext(spr_dig_pile, 0, x, y, 1, 1, 0, global.dirt_color, 1);
	}*/
} else {
	draw_self();
	if (current_animation == animation.dig) {
		draw_sprite_ext(spr_shovel, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}
if (global.debug) {
	draw_set_color(c_black);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
}