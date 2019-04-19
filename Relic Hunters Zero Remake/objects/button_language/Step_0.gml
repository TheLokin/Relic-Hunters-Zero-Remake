 /// @description Actions

event_inherited();

if (execute_action) {
	text_secondary = get_lang_code(option);
	set_language(option);
	with (class_text) {
		reload_text = true;
	}
}