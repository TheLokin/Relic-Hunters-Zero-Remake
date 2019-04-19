/*
 *	options_update()
 *
 *	Update the game options that have been modified.
 *
 *	Return: N/A.
 */

switch (room) {
	case rm_menu2:
		global.language = button_language.option;
		global.volume_master = button_master.option;
		global.volume_sound = button_sound.option;
		global.volume_music = button_music.option;
	break;
	case rm_menu3:
		global.fullscreen = button_fullscreen.option;
		global.resolution = button_resolution.option;
		global.vsync = button_vsync.option;
	break;
	case rm_menu4:
		global.double_tap = button_double_tap.option;
	break;
}