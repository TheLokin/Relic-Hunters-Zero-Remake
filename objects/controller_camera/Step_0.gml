/// @description Acciones

switch (room) {
	case rm_intro: case rm_menu1: case rm_menu2: case rm_menu3: case rm_menu4: case rm_menu5: case rm_menu6: case rm_menu7:
	break;
	default:
		x += (x_to-x)/16;
		y += (y_to-y)/16;
		if (instance_exists(class_player) != noone) {
			/*var _gamepad = get_gamepad_connected();*/
			
			/*if (_gamepad != noone && joystick_deadzone_check(_horizontal_axis, _vertical_axis, joy_deadzone)) {*/
			if (gamepad_is_connected(1)) {
				/*var _horizontal_axis = gamepad_axis_value(1, gp_axisrh);
				var _vertical_axis = gamepad_axis_value(1, gp_axisrv);
				var _joystick_direction = point_direction(0, 0, _horizontal_axis, _vertical_axis);
				
				x_to = lerp(class_player.x, _joystick_direction, 0.35)-view_widht/2;
				y_to = lerp(class_player.y, _joystick_direction, 0.35)-view_height/2;*/
				x_to = class_player.x-view_widht/2;
				y_to = class_player.y-view_height/2;
			} else {
				x_to = lerp(class_player.x, mouse_x, 0.35)-view_widht/2;
				y_to = lerp(class_player.y, mouse_y, 0.35)-view_height/2;
			}
		}
		camera_set_view_mat(camera, matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0));
	break;
}