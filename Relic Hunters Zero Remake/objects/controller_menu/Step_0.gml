/// @description Actions

if (controller_game.mouse_input) {
	var _button = instance_position(mouse_x, mouse_y, class_button);
	
	if (button_selected != noone) {
		button_selected.is_selected = false;
		button_selected = noone;
	}
	if (_button != noone) {	
		button_selected = _button;
		button_selected.is_selected = true;
		if (!is_changing && button_selected.is_avaliable && input_keyboard_confirm_pressed()) {
			button_selected.execute_action = true;
		}
	}
	if (instance_exists(button_cancel) && input_keyboard_cancel_pressed()) {
		button_cancel.execute_action = true;
	}
} else if (button_selected == noone) {
	switch (room) {
		case rm_menu1:
			button_selected = controller_game.button_menu1 != noone ? controller_game.button_menu1 : button_play;
		break;
		case rm_menu2:
			button_selected = controller_game.button_menu2 != noone ? controller_game.button_menu2 : button_language;
		break;
		case rm_menu3:
			button_selected = button_fullscreen;
		break;
		case rm_menu4:
			button_selected = button_double_tap;
		break;
		case rm_menu5:
			button_selected = button_confirm;
		break;
		case rm_menu6:
			button_selected = button_confirm;
		break;
		case rm_menu7:
			button_selected = button_cancel;
		break;
	}
	button_selected.is_selected = true;
	allow_input = false;
	alarm[0] = input_delay;
} else {
	button_selected.is_selected = true;
	if (allow_input) {
		var _horizontal_axis = gamepad_axis_value(global.gamepad, gp_axislh);
		var _vertical_axis = gamepad_axis_value(global.gamepad, gp_axislv);
		var _button = noone;
			
		if (joystick_deadzone_check(_horizontal_axis, _vertical_axis, joy_deadzone)) {
			var _joystick_direction = point_direction(0, 0, _horizontal_axis, _vertical_axis);
				
			if (_joystick_direction >= 45 && _joystick_direction < 135) {
				_button = button_selected.button_above;
			} else if (_joystick_direction >= 215 && _joystick_direction < 315) {
				_button = button_selected.button_below;
			} else if (_joystick_direction >= 135 && _joystick_direction < 215) {
				_button = button_selected.button_left;
			} else if (_joystick_direction >= 315 || _joystick_direction < 45) {
				_button = button_selected.button_right;
			}
		} else if (input_keyboard_up() || input_gamepad_up()) {
			_button = button_selected.button_above;
		} else if (input_keyboard_down() || input_gamepad_down()) {
			_button = button_selected.button_below;
		} else if (input_keyboard_left() || input_gamepad_left()) {
			_button = button_selected.button_left;
		} else if (input_keyboard_right() || input_gamepad_right()) {
			_button = button_selected.button_right;
		}
		if (_button != noone) {
			allow_input = false;
			alarm[0] = input_delay;
			if (_button.object_index == button_arrow) {
				_button.execute_action = true;
			} else {
				button_selected.is_selected = false;
				button_selected = _button;
				button_selected.is_selected = true;
			}
		}
	}
	if (!is_changing && button_selected.is_avaliable && (input_gamepad_confirm_pressed() ||  input_keyboard_confirm_pressed())) {
		button_selected.execute_action = true;
	} else if (instance_exists(button_cancel) && (input_gamepad_cancel_pressed() || input_keyboard_cancel_pressed())) {
		button_cancel.execute_action = true;
	}
}