/// @description Acciones

event_inherited();

if (execute_action) {
	switch (room) {
		case rm_menu2:
			room_goto(rm_menu1);
		break;
		case rm_menu3: case rm_menu4: case rm_menu5: case rm_menu6: case rm_menu7:
			room_goto(rm_menu2);
		break;
	}
}