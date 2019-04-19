/// @description Actions

#region Input.

	if (instance_exists(controller_menu)) {
		var _previous_input = mouse_input;

		if (previous_mouse_x != mouse_x || previous_mouse_y != mouse_y || mouse_check_button(mb_any)) {
			previous_mouse_x = mouse_x;
			previous_mouse_y = mouse_y;
			global.gamepad = noone;
			mouse_input = true;
			cursor_sprite = spr_cursor;
		} else if (keyboard_check(vk_anykey)) {
			global.gamepad = noone;
			mouse_input = false;
			cursor_sprite = spr_cursor;
		} else if (gamepad_check(gamepad)) {
			global.gamepad = gamepad;
			mouse_input = false;
			cursor_sprite = -1;
		}
		if (_previous_input != mouse_input) {
			controller_menu.is_changing = true;
			controller_menu.alarm[1] = controller_menu.change_delay;
		}
	} else {
		if (gamepad_check(gamepad)) {
			global.gamepad = gamepad;
			cursor_sprite = -1;
		} else if (keyboard_check(vk_anykey) || mouse_check_button(mb_any)) {
			global.gamepad = noone;
			if (room != rm_intro) {
				cursor_sprite = spr_crosshair1;
			}
		}
	}

#endregion