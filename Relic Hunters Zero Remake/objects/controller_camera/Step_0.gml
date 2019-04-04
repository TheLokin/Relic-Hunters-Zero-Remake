/// @description Actions

#region Screen shake.
    
	if (shake_screen > shake_max) {
		shake_screen = shake_max;
	}
	x = x+lengthdir_x(shake_screen*global.screen_shake_ratio, shake_direction);
	y = y+lengthdir_y(shake_screen*global.screen_shake_ratio, shake_direction);
	shake_direction = irandom(359);
	shake_screen -= shake_recovery;
	if (shake_screen < 0) {
		shake_screen = 0;
	}

#endregion
#region Zoom.

	if (current_zoom != zoom) {
		if (current_zoom > zoom) {
			current_zoom -= min(zoom_speed_in, current_zoom-zoom);
		} else {
			current_zoom += min(zoom_speed_out, zoom-current_zoom);
		}
	}

#endregion

switch (room) {
	case rm_intro: case rm_menu1: case rm_menu2: case rm_menu3: case rm_menu4: case rm_menu5: case rm_menu6: case rm_menu7:
	break;
	default:
		x += (x_to-x)/16;
		y += (y_to-y)/16;
		if (instance_exists(class_player) != noone) {
			/*var _gamepad = get_gamepad_connected();*/
			
			/*if (_gamepad != noone && joystick_deadzone_check(_horizontal_axis, _vertical_axis, joy_deadzone)) {*/
			if (global.gamepad != noone) {
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