/// @description Actions

event_inherited();

if (arrow_left.execute_action || arrow_right.execute_action) {
	arrow_left.execute_action = false;
	arrow_right.execute_action = false;
	execute_action = true;
}