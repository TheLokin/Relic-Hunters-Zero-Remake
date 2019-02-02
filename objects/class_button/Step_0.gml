/// @description Acciones

#region Escala del icono.

	if (is_selected) {
		if (icon_scale > icon_scale_final) {
			icon_scale -= min(icon_scale_speed, icon_scale-icon_scale_final);
		}
	} else {
		icon_scale = icon_scale_start;
	}

#endregion
#region Audio.

	#region Botón seleccionado.
	
		if (is_selected) {
			if (audio_button_selected != noone && !is_audio_selected_play) {
				is_audio_selected_play = true;
				audio_play_sound(audio_button_selected, 1, false);
			}
		} else {
			is_audio_selected_play = false;
		}
	
	#endregion
	#region Botón clickado.
	
		if (execute_action) {
			if (audio_button_clicked != noone && !is_audio_clicked_play) {
				is_audio_clicked_play = true;
				audio_play_sound(audio_button_clicked, 1, false);
			}
		} else {
			is_audio_clicked_play = false;
		}
	
	#endregion

#endregion