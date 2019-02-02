/// @description Cambiar entre teclado y mando

// Actualizamos la posición del ratón.
if (!allow_input) {
	old_mouse_x = mouse_x;
	old_mouse_y = mouse_y;
}

// Comprobamos si el ratón está activo.
if (allow_input && (mouse_x != old_mouse_x || mouse_y != old_mouse_y || mouse_check_button(mb_any))) {
	mouse.visible = true;
}

// Comprobamos si alguno de los mandos está activo.
if (gamepad_check(get_gamepad_connected())) {
	mouse.visible = false;
}