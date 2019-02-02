/// @description Máscara de colisión

draw_self();
if (global.debug) {
	draw_set_color(c_yellow);												// Color.
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);		// Máscara de colisión.
}