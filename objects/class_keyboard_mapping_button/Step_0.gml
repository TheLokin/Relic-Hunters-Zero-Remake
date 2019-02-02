/// @description Acciones

event_inherited();

if (execute_action) {
	execute_action = false;
	if (!is_waiting) {
		is_waiting = true;
		alarm[0] = input_time;
		label_text = get_label("mapping_press_any");
	}
}
if (allow_input && is_waiting) {
	if (keyboard_check_pressed(vk_anykey)) {
		is_waiting = false;
		allow_input = false;
		key = keyboard_lastkey;
		label_text = input_get_label(key);
	}
	if (keyboard_check_direct(vk_lshift)) {
		is_waiting = false;
		allow_input = false;
		key = vk_lshift;
		label_text = input_get_label(key);
	}
	if (keyboard_check_direct(vk_lcontrol)) {
		is_waiting = false;
		allow_input = false;
		key = vk_lcontrol;
		label_text = input_get_label(key);
	}
	if (keyboard_check_direct(vk_lalt)) {
		is_waiting = false;
		allow_input = false;
		key = vk_lalt;
		label_text = input_get_label(key);
	}
	if (keyboard_check_direct(vk_rshift)) {
		is_waiting = false;
		allow_input = false;
		key = vk_rshift;
		label_text = input_get_label(key);
	}
	if (keyboard_check_direct(vk_rcontrol)) {
		is_waiting = false;
		allow_input = false;
		key = vk_rcontrol;
		label_text = input_get_label(key);
	}
	if (keyboard_check_direct(vk_ralt)) {
		is_waiting = false;
		allow_input = false;
		key = vk_ralt;
		label_text = input_get_label(key);
	}
	if (mouse_check_button_pressed(mb_any)) {
		is_waiting = false;
		allow_input = false;
		key = mouse_lastbutton;
		label_text = input_get_label(key);
	}
}
if (instance_exists(obj_button_move_up1) && instance_find(obj_button_move_up1, 0) != id && obj_button_move_up1.key != noone && obj_button_move_up1.key == key) {
	key = obj_button_move_up1.key;
	obj_button_move_up1.key = noone;
	obj_button_move_up1.label_text = get_label("mapping_not_bound");
}
if (instance_exists(obj_button_move_up2) && instance_find(obj_button_move_up2, 0) != id && obj_button_move_up2.key != noone && obj_button_move_up2.key == key) {
	key = obj_button_move_up2.key;
	obj_button_move_up2.key = noone;
	obj_button_move_up2.label_text = get_label("mapping_not_bound");
}
if (instance_exists(obj_button_move_down1) && instance_find(obj_button_move_down1, 0) != id && obj_button_move_down1.key != noone && obj_button_move_down1.key == key) {
	key = obj_button_move_down1.key;
	obj_button_move_down1.key = noone;
	obj_button_move_down1.label_text = get_label("mapping_not_bound");
}
if (instance_exists(obj_button_move_down2) && instance_find(obj_button_move_down2, 0) != id && obj_button_move_down2.key != noone && obj_button_move_down2.key == key) {
	key = obj_button_move_down2.key;
	obj_button_move_down2.key = noone;
	obj_button_move_down2.label_text = get_label("mapping_not_bound");
}
if (instance_exists(obj_button_move_left1) && instance_find(obj_button_move_left1, 0) != id && obj_button_move_left1.key != noone && obj_button_move_left1.key == key) {
	key = obj_button_move_left1.key;
	obj_button_move_left1.key = noone;
	obj_button_move_left1.label_text = get_label("mapping_not_bound");
}
if (instance_exists(obj_button_move_left2) && instance_find(obj_button_move_left2, 0) != id && obj_button_move_left2.key != noone && obj_button_move_left2.key == key) {
	key = obj_button_move_left2.key;
	obj_button_move_left2.key = noone;
	obj_button_move_left2.label_text = get_label("mapping_not_bound");
}
if (instance_exists(obj_button_move_right1) && instance_find(obj_button_move_right1, 0) != id && obj_button_move_right1.key != noone && obj_button_move_right1.key == key) {
	key = obj_button_move_right1.key;
	obj_button_move_right1.key = noone;
	obj_button_move_right1.label_text = get_label("mapping_not_bound");
}
if (instance_exists(obj_button_move_right2) && instance_find(obj_button_move_right2, 0) != id && obj_button_move_right2.key != noone && obj_button_move_right2.key == key) {
	key = obj_button_move_right2.key;
	obj_button_move_right2.key = noone;
	obj_button_move_right2.label_text = get_label("mapping_not_bound");
}