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
		if (global.fullscreen != button_fullscreen.option) {
			window_set_fullscreen(global.fullscreen);
			window_set_resolution(button_resolution.option);
		}
		if (global.resolution != button_resolution.option) {
			window_set_resolution(global.resolution);
		}
		if (global.vsync != button_vsync.option) {
			display_reset(0, global.vsync);
		}
	break;
	case rm_menu4:
		if (global.double_tap != button_double_tap.option) {
			global.double_tap = button_double_tap.option;
		}
	break;
}