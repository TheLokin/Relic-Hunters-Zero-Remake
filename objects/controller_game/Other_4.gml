/// @description Rooms
		
switch (room) {
	case rm_init:	
		instance_create_layer(0, 0, "controller_layer", controller_camera);
		room_goto_next();
	break;
	case rm_intro:
		instance_create_layer(0, 0, "controller_layer", controller_intro);
	break;
	case rm_menu1: case rm_menu2: case rm_menu3: case rm_menu4: case rm_menu5: case rm_menu6: case rm_menu7:
		instance_create_layer(0, 0, "controller_layer", controller_menu);
		if (!audio_is_playing(bgm_menu)) {
			audio_play_sound(bgm_menu, 1, true);
		}
	break;
	default:
		global.player = instance_create_layer(224, 192, "Player", ace_player);
		add_owner("player", global.player);
		instance_create_layer(0, 0, "Hud", player_hud);
	break;
}