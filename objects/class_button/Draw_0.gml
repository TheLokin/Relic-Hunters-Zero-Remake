/// @description Máscara de colisión

if (global.debug) {
	draw_set_color(c_black);												// Color.
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);		// Mascara de colisión.
}