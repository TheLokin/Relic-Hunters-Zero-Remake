/// @function options_update()
/// @description Actualiza las opciones que hayan sido modificadas.
/// @return void

if (instance_exists(obj_button_language) && controller_game.option_language != noone) {
	controller_game.option_language = obj_button_language.option;
}
if (instance_exists(obj_button_master)) {
	global.volume_master = obj_button_master.option;
}
if (instance_exists(obj_button_sound)) {
	global.volume_sound = obj_button_sound.option;
}
if (instance_exists(obj_button_music)) {
	global.volume_music = obj_button_music.option;
}
if (instance_exists(obj_button_fullscreen)) {
	controller_game.option_fullscreen = obj_button_fullscreen.option;
}
if (instance_exists(obj_button_resolution)) {
	controller_game.option_resolution = obj_button_resolution.option;
}
if (instance_exists(obj_button_move_up1) && obj_button_move_up1.key != controller_game.option_keyboard[0, 0]) {
	controller_game.option_keyboard[0, 0] = obj_button_move_up1.key;
}
if (instance_exists(obj_button_move_up2) && obj_button_move_up2.key != controller_game.option_keyboard[0, 1]) {
	controller_game.option_keyboard[0, 1] = obj_button_move_up2.key;
}
if (instance_exists(obj_button_move_down1) && obj_button_move_down1.key != controller_game.option_keyboard[1, 0]) {
	controller_game.option_keyboard[1, 0] = obj_button_move_down1.key;
}
if (instance_exists(obj_button_move_down2) && obj_button_move_down2.key != controller_game.option_keyboard[1, 1]) {
	controller_game.option_keyboard[1, 1] = obj_button_move_down2.key;
}
if (instance_exists(obj_button_move_left1) && obj_button_move_left1.key != controller_game.option_keyboard[2, 0]) {
	controller_game.option_keyboard[2, 0] = obj_button_move_left1.key;
}
if (instance_exists(obj_button_move_left2) && obj_button_move_left2.key != controller_game.option_keyboard[2, 1]) {
	controller_game.option_keyboard[2, 1] = obj_button_move_left2.key;
}
if (instance_exists(obj_button_move_right1) && obj_button_move_right1.key != controller_game.option_keyboard[3, 0]) {
	controller_game.option_keyboard[3, 0] = obj_button_move_right1.key;
}
if (instance_exists(obj_button_move_right2) && obj_button_move_right2.key != controller_game.option_keyboard[3, 1]) {
	controller_game.option_keyboard[3, 1] = obj_button_move_right2.key;
}