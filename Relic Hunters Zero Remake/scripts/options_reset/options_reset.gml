/*
 *	options_reset()
 *
 *	Reset the game options that have been modified.
 *
 *	Return: N/A.
 */

switch (room) {
	case rm_menu2:		
		if (global.language != button_language.option) {
			set_language(global.language);
		}
		if (global.volume_master != button_master.option) {
			set_master_volume(global.volume_master);
		}
		if (global.volume_sound != button_sound.option) {
			set_sound_volume(global.volume_sound);
		}
		if (global.volume_music != button_music.option) {
			set_music_volume(global.volume_music);
		}
	break;
	case rm_menu3:		
		if (obj_button_fullscreen.option != controller_game.option_fullscreen) {
			resolution_switch(controller_game.option_fullscreen);
		}
		if (obj_button_resolution.option != controller_game.option_resolution) {
			resolution_update(controller_game.option_resolution);
		}
	break;
}