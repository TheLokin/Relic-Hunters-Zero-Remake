 /// @description Acciones

event_inherited();

if (minus_button.update || plus_button.update) {
	set_language(controller_game.language_id[option, 1]);
	with (class_label) {
		reload_text = true;
	}
}