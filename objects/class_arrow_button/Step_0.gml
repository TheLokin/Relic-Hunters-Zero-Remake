/// @description Acciones

#region Audio.

	if (execute_action && audio_button_clicked != noone) {
		audio_play_sound(audio_button_clicked, 1, false);
	}

#endregion

switch (image_xscale) {
	case 1:
		// La flecha se desplaza hacia la derecha.
		if (execute_action) {
			execute_action = false;
			if (is_avaliable && box_button.option < box_button.max_option) {
				box_button.option++;
				update = true;
			}
		}
		if (box_button.option == box_button.max_option) {
			is_avaliable = false;
		} else {
			is_avaliable = true;
		}
	break;
	case -1:
		// La flecha se desplaza hacia la izquierda.
		if (execute_action) {
			execute_action = false;
			if (is_avaliable && box_button.option > 0) {
				box_button.option--;
				update = true;
			}
		}
		if (box_button.option == 0) {
			is_avaliable = false;
		} else {
			is_avaliable = true;
		}
	break;
}