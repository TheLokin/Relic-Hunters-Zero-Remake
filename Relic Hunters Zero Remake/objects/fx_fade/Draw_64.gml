/// @description Fade

if (room != target_room) {
	current_alpha += alpha_speed;
	if (current_alpha >= 0.8) {
		room_goto(target_room);
	}
} else {
	current_alpha -= alpha_speed;
	if (current_alpha <= 0) {
		instance_destroy();
	}
}
draw_set_alpha(current_alpha);
draw_rectangle_color(0, 0, width, height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);