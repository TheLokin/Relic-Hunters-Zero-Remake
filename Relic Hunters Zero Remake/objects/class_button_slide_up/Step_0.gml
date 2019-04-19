/// @description Actions

event_inherited();

if (execute_action) {
	switch (room) {
		case rm_menu2:
			create_fade_fx(rm_menu1);
		break;
		default:
			create_fade_fx(rm_menu2);
		break;
	}
}