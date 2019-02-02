/// @description Botón

if (is_selected) {
	image_index = 0;
} else {
	image_index = 1;
}
if (!is_avaliable) {
	draw_sprite_ext(spr_arrow_button, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.5);		// Flecha opaca.
} else {
	draw_sprite_ext(spr_arrow_button, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);		// Flecha.
}