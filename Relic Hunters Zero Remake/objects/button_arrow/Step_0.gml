/// @description Actions

if (instance_position(mouse_x, mouse_y, id) != noone) {
	is_selected = true;
	if (mouse_check_button_pressed(mb_left)) {
		execute_action = true;
	}
} else {
	is_selected = false;
}
switch (image_xscale) {
	case 1:
		if (execute_action) {
			if (owner.option < owner.max_option) {
				owner.option++;
			} else if (is_circular) {
				owner.option = 0;
			}
			audio_play_sound(sfx_clicked, pr_hight, false);
		}
		if (!is_circular && owner.option == owner.max_option) {
			is_avaliable = false;
		} else {
			is_avaliable = true;
		}
	break;
	case -1:
		if (execute_action) {
			if (owner.option > 0) {
				owner.option--;
			} else if (is_circular) {
				owner.option = owner.max_option;
			}
			audio_play_sound(sfx_clicked, pr_hight, false);
		}
		if (!is_circular && owner.option == 0) {
			is_avaliable = false;
		} else {
			is_avaliable = true;
		}
	break;
}