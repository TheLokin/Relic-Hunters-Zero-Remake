/// @description Fade

var _camera_x = camera_get_view_x(view_camera[0]);
var _camera_y = camera_get_view_y(view_camera[1]);

draw_set_alpha(current_alpha);
draw_rectangle_color(_camera_x, _camera_y, _camera_x+window_width, _camera_y+window_height, alpha_color, alpha_color, alpha_color, alpha_color, false);
draw_set_alpha(1);