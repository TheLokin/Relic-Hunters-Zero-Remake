/// @description Button

if (!is_avaliable) {
	if (is_selected) {
		draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, 0.5);
	} else {
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.5);
	}
} else {
	if (is_selected) {
		draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, 1);
	} else {
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
	}
}