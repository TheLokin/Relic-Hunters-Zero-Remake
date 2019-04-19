/// @description Actions

event_inherited();

if (is_selected) {
	if (current_y > final_y) {
		current_y -= min(move_speed, abs(final_y-current_y));
	} else if (current_y < final_y) {
		current_y += min(move_speed, abs(final_y-current_y));
	}
	if (current_x > final_x) {
		current_x -= min(move_speed, abs(final_x-current_x));
	} else if (current_x < final_x) {
		current_x += min(move_speed, abs(final_x-current_x));
	}
} else {
	if (current_y > start_y) {
		current_y -= min(move_speed, abs(start_y-current_y));
	} else if (current_y < start_y) {
		current_y += min(move_speed, abs(start_y-current_y));
	}
	if (current_x > start_x) {
		current_x -= min(move_speed, abs(start_x-current_x));
	} else if (current_x < start_x) {
		current_x += min(move_speed, abs(start_x-current_x));
	}
}