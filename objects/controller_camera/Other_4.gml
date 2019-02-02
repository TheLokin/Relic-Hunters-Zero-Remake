/// @description Habitación

view_enabled = true;
view_set_visible(0, true);
view_set_camera(0, camera);

switch (room) {
	case rm_intro: case rm_menu1: case rm_menu2: case rm_menu3: case rm_menu4: case rm_menu5: case rm_menu6: case rm_menu7:
		x = base_width/2;
		y = base_height/2;
	break;
	default:
		if (instance_exists(class_player) != noone) {
			x = class_player.x;
			y = class_player.y;
		}
	break;
}
camera_set_view_mat(camera, matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0));