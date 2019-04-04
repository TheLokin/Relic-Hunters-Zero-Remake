/*
 *	input_keyboard_switch_pressed()
 *
 *	Returns true if the button to switch the weapon with the keyboard is pressed or false otherwise.
 *
 *	Returns: boolean.
 */

return keyboard_check_pressed(global.keyboard_switch) || global.allow_wheel_mouse && (mouse_wheel_up() || mouse_wheel_down());