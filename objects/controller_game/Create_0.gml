/// @description Variables

window_set_cursor(cr_none);

global.debug = false;		// Modo debug.
global.pause = false;		// Pausa.
global.gamepad = noone;

global.relic_detected = true;

map_owners = ds_map_create();		// Map with the owners who performs the actions.

global.player = noone;

#region Game options.

	global.allow_double_tap = true;			// Allow double tap to perform the player dash.
	global.allow_wheel_mouse = true;		// Allow the wheel mouse to change weapons.

#endregion
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
	global.keyboard_interaction = 69;
	global.keyboard_switch = vk_tab;
	global.keyboard_reload = 82;
	global.keyboard_grenade = noone;
	
#endregion
#region Gamepad.

	global.gamepad_sprint1 = gp_face1;
	global.gamepad_sprint2 = gp_stickl;
	global.gamepad_dash = gp_face1;
	global.gamepad_interaction = gp_face3;
	global.gamepad_switch = gp_face4;
	global.gamepad_reload = noone;
	global.gamepad_grenade = noone;

#endregion

map_language = noone;		// Mapa con las entradas del idioma.
font_text = noone;			// Array con las fuentes.
language_id = noone;		// Array con los identificadores de los idiomas.
//button_selected = noone;