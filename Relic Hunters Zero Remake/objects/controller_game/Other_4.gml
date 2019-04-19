/// @description Rooms

switch (room) {
	case rm_init:
		room_goto_next();
	break;
	case rm_intro:
		instance_create_layer(0, 0, "controller", controller_camera);
	break;
	case rm_menu1: case rm_menu2: case rm_menu3: case rm_menu4: case rm_menu5: case rm_menu6: case rm_menu7:
		instance_create_layer(0, 0, "controller", controller_menu);
	break; 
	default:
		if (global.gamepad == noone) {
			cursor_sprite = spr_crosshair1;
		}
		instance_create_layer(0, 0, "controller", controller_level);
	break;
}