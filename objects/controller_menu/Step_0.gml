/// @description Interacción

#region Interacción con ratón.

	if (mouse.visible) {
		var _button = instance_position(mouse_x, mouse_y, class_button);
		
		if (button_selected != noone) {
			button_selected.is_selected = false;
		}
		// Comprobamos si el ratón esta sobre el botón.
		if (_button != noone) {
			button_selected = _button;
			button_selected.is_selected = true;
			if (mouse_check_button_pressed(mb_left) && button_selected.is_avaliable) {
				button_selected.execute_action = true;
			}
		}
		// Atajo.
		if (keyboard_check_pressed(vk_escape) && instance_exists(obj_button_cancel)) {
			obj_button_cancel.execute_action = true;
		}
	}

#endregion
#region Interacción con mando.

	if (ds_exists(grid_button, ds_type_grid)) {
		var _gamepad = get_gamepad_connected();
		
		if (_gamepad != noone) {
			// Si no hay ningún botón seleccionado se selecciona el primero.
			if (button_selected == noone) {
				button_selected = get_first_button(grid_button);
				button_selected.is_selected = true;
				allow_input = false;
				alarm[0] = input_time;
			} else {
				var _horizontal_axis = gamepad_axis_value(_gamepad, gp_axislh);
				var _vertical_axis = gamepad_axis_value(_gamepad, gp_axislv);
				var _joystick_deadzone = joystick_deadzone_check(_horizontal_axis, _vertical_axis, joy_deadzone);
				
				button_selected.is_selected = true;
				if (allow_input && (_joystick_deadzone || gamepad_button_check(_gamepad, gp_padu) ||
					gamepad_button_check(_gamepad, gp_padd) || gamepad_button_check(_gamepad, gp_padl) ||
					gamepad_button_check(_gamepad, gp_padr))) {
					allow_input = false;
					alarm[0] = input_time;
					var _joystick_direction = noone;
					
					// Si se ha pulsado el joystick calculamos la dirección del joystick.
					if (_joystick_deadzone) {
						_joystick_direction = point_direction(0, 0, _horizontal_axis, _vertical_axis);
					}
					// Botón hacia arriba.
					if (_joystick_direction >= 45 && _joystick_direction < 135 || gamepad_button_check(_gamepad, gp_padu)) {
						button_selected.is_selected = false;
						if (button_selected.allow_gamepad_selection) {
							button_selected = get_above_button(grid_button, button_selected);
						} else {
							button_selected = get_first_button(grid_button);
						}
						button_selected.is_selected = true;
					}
					// Botón hacia abajo.
					if (_joystick_direction >= 215 && _joystick_direction < 315 || gamepad_button_check(_gamepad, gp_padd)) {
						button_selected.is_selected = false;
						if (button_selected.allow_gamepad_selection) {
							button_selected = get_below_button(grid_button, button_selected);
						} else {
							button_selected = get_first_button(grid_button);
						}
						button_selected.is_selected = true;
					}
					// Botón hacia la izquierda.
					if (_joystick_direction >= 135 && _joystick_direction < 215 || gamepad_button_check(_gamepad, gp_padl)) {
						var _button = 0;
								
						while (button_selected != instance_find(class_box_button, _button) &&
							   _button < instance_number(class_box_button)) {
							_button++;
						}
						if (button_selected == instance_find(class_box_button, _button)) {
							button_selected.minus_button.execute_action = true;
						} else {
							button_selected.is_selected = false;
							if (button_selected.allow_gamepad_selection) {
								button_selected = get_left_button(grid_button, button_selected);
							} else {
								button_selected = get_first_button(grid_button);
							}
							button_selected.is_selected = true;
						}
					}
					// Botón hacia la derecha.
					if (_joystick_direction != noone && (_joystick_direction >= 315 || _joystick_direction < 45) ||
						gamepad_button_check(_gamepad, gp_padr)) {
						var _button = 0;
								
						while (button_selected != instance_find(class_box_button, _button) &&
							   _button < instance_number(class_box_button)) {
							_button++;
						}
						if (button_selected == instance_find(class_box_button, _button)) {
							button_selected.plus_button.execute_action = true;
						} else {
							button_selected.is_selected = false;
							if (button_selected.allow_gamepad_selection) {
								button_selected = get_right_button(grid_button, button_selected);
							} else {
								button_selected = get_first_button(grid_button);
							}
							button_selected.is_selected = true;
						}
					}
				}
				if (gamepad_button_check_pressed(_gamepad, gp_face1) && button_selected.is_avaliable) {
					button_selected.execute_action = true;
				}
				// Atajo.
				if (gamepad_button_check_pressed(_gamepad, gp_face2) && instance_exists(obj_button_cancel)) {
					obj_button_cancel.execute_action = true;
				}
			}
		}
	}

#endregion