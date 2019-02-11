/// @description Player

if (is_digging) {
	draw_sprite_part(sprite_index, image_index, 0, 0, sprite_width, sprite_height-dig_depth, x-sprite_xoffset, y-sprite_yoffset+dig_depth);
	if (current_animation != animation.dig) {
		draw_sprite(spr_shovel_idle, image_index, x, y);
	} else {
		draw_sprite_part(spr_shovel_dig, image_index, 0, 0, sprite_width, sprite_height-dig_depth, x-sprite_xoffset, y-sprite_yoffset+dig_depth);
	}
	var _dig_progress = dig_depth_max/3;
	var _dig_image = 0;
	
	if (dig_depth < _dig_progress) {
		_dig_image = 0;
	} else if (dig_depth >= _dig_progress*2) {
		_dig_image = 2;
	} else {
		_dig_image = 1;
	}
    draw_sprite_ext(spr_dig_pile, _dig_image, x, y, 1, 1, 0, dirt_color, 1);
} else {
	draw_self();
	if (current_animation == animation.dig) {
		draw_sprite_ext(spr_shovel_dig, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}
if (global.debug) {
	draw_set_color(c_red);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
}