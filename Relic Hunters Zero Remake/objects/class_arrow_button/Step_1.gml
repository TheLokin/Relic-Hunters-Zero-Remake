/// @description Actions

if (instance_position(mouse_x, mouse_y, id) != noone && instance_exists(controller_menu) && controller_menu.mouse.visible) {
	is_selected = true;
	if (mouse_check_button_pressed(mb_left)) {
		execute_action = true;
	}
} else {
	is_selected = false;
}