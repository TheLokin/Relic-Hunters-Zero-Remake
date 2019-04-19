/*
 *	input_keyboard_confirm_pressed()
 *
 *	Returns true if the button to confirm with the keyboard is pressed or false otherwise.
 *
 *	Returns: boolean.
 */

return mouse_check_button_pressed(global.mouse_confirm) || keyboard_check_pressed(global.keyboard_confirm);