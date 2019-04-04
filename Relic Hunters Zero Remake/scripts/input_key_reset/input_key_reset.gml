/// @function input_key_reset()
/// @description Resetea las teclas que hayan sido modificadas.
/// @return void

if (instance_exists(obj_button_move_up1) && obj_button_move_up1.key != ord("W")) {
	obj_button_move_up1.key = ord("W");
	obj_button_move_up1.label_text = input_get_label(ord("W"));
}
if (instance_exists(obj_button_move_up2) && obj_button_move_up2.key != vk_up) {
	obj_button_move_up2.key = vk_up;
	obj_button_move_up2.label_text = input_get_label(vk_up);
}
if (instance_exists(obj_button_move_down1) && obj_button_move_down1.key != ord("S")) {
	obj_button_move_down1.key = ord("S");
	obj_button_move_down1.label_text = input_get_label(ord("S"));
}
if (instance_exists(obj_button_move_down2) && obj_button_move_down2.key != vk_down) {
	obj_button_move_down2.key = vk_down;
	obj_button_move_down2.label_text = input_get_label(vk_down);
}
if (instance_exists(obj_button_move_left1) && obj_button_move_left1.key != ord("A")) {
	obj_button_move_left1.key = ord("A");
	obj_button_move_left1.label_text = input_get_label(ord("A"));
}
if (instance_exists(obj_button_move_left2) && obj_button_move_left2.key != vk_left) {
	obj_button_move_left2.key = vk_left;
	obj_button_move_left2.label_text = input_get_label(vk_left);
}
if (instance_exists(obj_button_move_right1) && obj_button_move_right1.key != ord("D")) {
	obj_button_move_right1.key = ord("D");
	obj_button_move_right1.label_text = input_get_label(ord("D"));
}
if (instance_exists(obj_button_move_right2) && obj_button_move_right2.key != vk_right) {
	obj_button_move_right2.key = vk_right;
	obj_button_move_right2.label_text = input_get_label(vk_right);
}