/// @description Actions

event_inherited();

if (execute_action) {
	options_reset();
	switch (room) {
		case rm_menu2:
			room_goto(rm_menu1);
		break;
		default:
			room_goto(rm_menu2);
		break;
	}
}