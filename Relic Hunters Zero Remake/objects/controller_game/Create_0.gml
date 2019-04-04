/// @description Variables

gamepad = get_gamepad_connected();

global.debug = true;		// Modo debug.
global.pause = false;		// Pause.
global.gamepad = noone;		// Gamepad.
global.player = noone;		// Player.

map_owners = ds_map_create();			// Map with the owners who performs the actions.
	
#region Game options.
	
	
	global.language = 0;					// Language.
	map_languages = noone;					// Map with the settings of the languages.
	global.volume_master = 10;				// Master volume.
	global.volume_sound = 3;				// Sound volume.
	global.volume_music = 2;				// Music volume.
	global.allow_double_tap = true;			// Allow double tap to perform the player dash.
	global.allow_wheel_mouse = true;		// Allow the wheel mouse to change weapons.
	global.screen_shake_ratio = 1;

#endregion
#region Keyboard.

	global.keyboard_up1 = 87;				// Button one to move up with the keyboard.
	global.keyboard_up2 = vk_up;			// Button two to move up with the keyboard.
	global.keyboard_down1 = 83;				// Button one to move down with the keyboard.
	global.keyboard_down2 = vk_down;		// Button two to move down with the keyboard.
	global.keyboard_left1 = 65;				// Button one to move left with the keyboard.
	global.keyboard_left2 = vk_left;		// Button two to move left with the keyboard.
	global.keyboard_right1 = 68;			// Button one to move right with the keyboard.
	global.keyboard_right2 = vk_right;		// Button two to move right with the keyboard.
	global.keyboard_sprint = vk_shift;		// Button to sprint with the keyboard.
	global.keyboard_dash = vk_space;		// Button to dash with the keyboard.
	global.keyboard_interaction = 69;		// Button to interact with the keyboard.
	global.keyboard_shot = mb_left;			// Button to shot with the keyboard.
	global.keyboard_aim = mb_right;			// Button to aim with the keyboard.
	global.keyboard_reload = 82;			// Button to reload with the keyboard.
	global.keyboard_switch = vk_tab;		// Button to switch the weapon with the keyboard.
	global.keyboard_grenade = noone;		// Button to throw a grenade with the keyboard.
	
#endregion
#region Gamepad.

	global.gamepad_sprint1 = gp_face1;			// Button one to sprint with the gamepad.
	global.gamepad_sprint2 = gp_stickl;			// Button two to sprint with the gamepad.
	global.gamepad_dash = gp_face1;				// Button to dash with the gamepad.
	global.gamepad_interaction = gp_face3;		// Button to interact with the gamepad.
	global.gamepad_shot = gp_shoulderrb;		// Button to shot with the gamepad.
	global.gamepad_aim = noone;					// Button to aim with the gamepad.
	global.gamepad_reload = noone;				// Button to reload with the gamepad.
	global.gamepad_switch = gp_face4;			// Button to switch with the gamepad.
	global.gamepad_grenade = noone;				// Button to throw a grenade.

#endregion