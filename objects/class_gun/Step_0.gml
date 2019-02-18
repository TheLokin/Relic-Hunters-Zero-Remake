/// @description Actions

if (!global.pause) {
	switch (object_get_parent(owner.object_index)) {
		case class_player:
			x = owner.x;
			image_xscale = owner.image_xscale;
			if (is_selected) {
				y = owner.y-8;
				depth = owner.depth-1;
				if (owner.is_sprinting) {
					if (image_xscale == 1) {
						image_angle = -45;
					} else {
						image_angle = 45;
					}
				} else {
					if (global.gamepad != noone) {
						var _horizontal_axis = gamepad_axis_value(global.gamepad, gp_axislh);
						var _vertical_axis = gamepad_axis_value(global.gamepad, gp_axislv);
	
						/*if (joystick_deadzone_check(_horizontal_axis, _vertical_axis, joy_deadzone)) {
							var _direction = point_direction(owner.x, owner.y, owner.x+_horizontal_axis, owner.y+_vertical_axis);
						}
						
						var _target_x = owner.x+lengthdir_x(0, 0);
						var _target_y = owner.y+lengthdir_y(0, 0);*/
						
						image_angle = point_direction(x, y, _horizontal_axis, _vertical_axis);
					} else {
						image_angle = point_direction(x, y, mouse_x, mouse_y);
					}
					if (image_xscale == -1) {
						image_angle += 180;
					}
				}
			} else {
				y = owner.y-16;
				depth = owner.depth+1;
				if (image_xscale == 1) {
					image_angle = 135;
				} else {
					image_angle = 225;
				}
			}
		break;
	}
	#region Recoil.
	
		current_recoil += recoil_speed;
		if (current_recoil > 0) {
			recoil_speed -= recoil_return;
		} else {
			current_recoil = 0;
			recoil_speed = 0;
		}
		if (current_recoil > recoil_max) {
			current_recoil = recoil_max;
		}
	
	#endregion
}