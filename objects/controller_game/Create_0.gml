/// @description Variables

global.debug = false;		// Modo debug.
global.pause = false;		// Pausa.
global.gamepad = get_gamepad_connected();

global.relic_detected = true;

global.double_tap = true;

map_owners = ds_map_create();		// Map with the owners who performs the actions.

global.player = noone;

#region Keyboard.

	global.keyboard_up1 = 87;
	global.keyboard_up2 = vk_up;
	global.keyboard_down1 = 83;
	global.keyboard_down2 = vk_down;
	global.keyboard_left1 = 65;
	global.keyboard_left2 = vk_left;
	global.keyboard_right1 = 68;
	global.keyboard_right2 = vk_right;
	global.keyboard_sprint = vk_space;
	global.keyboard_dash = vk_space;
	
#endregion
#region Gamepad.

	global.gamepad_sprint1 = gp_face1;
	global.gamepad_sprint2 = gp_stickl;
	global.gamepad_dash = gp_face1;

#endregion

map_language = noone;		// Mapa con las entradas del idioma.
font_text = noone;			// Array con las fuentes.
language_id = noone;		// Array con los identificadores de los idiomas.
//button_selected = noone;