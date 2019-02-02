/// @description Acciones

event_inherited();

if (is_selected) {
	// Arriba.
	if (current_y > final_y) {
		current_y -= min(move_speed, abs(final_y-current_y));
	}
	// Abajo.
	if (current_y < final_y) {
		current_y += min(move_speed, abs(final_y-current_y));
	}
	// Izquierda.
	if (current_x > final_x) {
		current_x -= min(move_speed, abs(final_x-current_x));
	}
	// Derecha.
	if (current_x < final_x) {
		current_x += min(move_speed, abs(final_x-current_x));
	}
} else {
	// Arriba.
	if (current_y > start_y) {
		current_y -= min(move_speed, abs(start_y-current_y));
	}
	// Abajo.
	if (current_y < start_y) {
		current_y += min(move_speed, abs(start_y-current_y));
	}
	// Iquierda.
	if (current_x > start_x) {
		current_x -= min(move_speed, abs(start_x-current_x));
	}
	// Derecha.
	if (current_x < start_x) {
		current_x += min(move_speed, abs(start_x-current_x));
	}
}