/// @function options_reset()
/// @description Resetea las opciones que hayan sido modificadas.
/// @return void

if (instance_exists(obj_button_language) && controller_game.option_language != noone && obj_button_language.option != controller_game.option_language) {
	language_update(controller_game.language_id[controller_game.option_language, 1]);
}
if (instance_exists(obj_button_master) && obj_button_master.option != controller_game.option_master) {
	master_update(controller_game.option_master);
}
if (instance_exists(obj_button_sound) && obj_button_sound.option != controller_game.option_sound) {
	sound_update(controller_game.option_sound);
}
if (instance_exists(obj_button_music) && obj_button_music.option != controller_game.option_music) {
	music_update(controller_game.option_music);
}
if (instance_exists(obj_button_fullscreen) && obj_button_fullscreen.option != controller_game.option_fullscreen) {
	resolution_switch(controller_game.option_fullscreen);
}
if (instance_exists(obj_button_resolution) && obj_button_resolution.option != controller_game.option_resolution) {
	resolution_update(controller_game.option_resolution);
}