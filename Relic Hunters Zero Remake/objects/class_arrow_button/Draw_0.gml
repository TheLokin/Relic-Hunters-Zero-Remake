/// @description Button

if (is_selected) {
	image_index = 1;
} else {
	image_index = 0;
}
if (!is_avaliable) {
	draw_sprite_ext(spr_arrow_button, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.5);
} else {
	draw_sprite_ext(spr_arrow_button, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}