/// @description Free up memory

switch (room) {
	case rm_menu1:
		controller_game.button_menu1 = button_selected;
	break;
	case rm_menu2:
		if (button_selected != button_confirm && button_selected != button_cancel) {
			controller_game.button_menu2 = button_selected;
		}
	break;
}