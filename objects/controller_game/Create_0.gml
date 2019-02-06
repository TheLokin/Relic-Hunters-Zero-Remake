/// @description Variables

global.debug = false;		// Modo debug.
global.pause = false;		// Pausa.

if (gamepad_is_connected(0)) {
	global.gamepad = 0;
} else {
	global.gamepad = noone;
}

map_language = noone;		// Mapa con las entradas del idioma.
font_text = noone;			// Array con las fuentes.
language_id = noone;		// Array con los identificadores de los idiomas.
//button_selected = noone;