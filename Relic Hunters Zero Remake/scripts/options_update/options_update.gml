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
		controller_game.option_fullscreen = button_fullscreen.option;
		controller_game.option_resolution = button_resolution.option;
	break;
}