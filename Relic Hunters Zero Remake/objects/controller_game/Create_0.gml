/// @description Variables

#region Information.

	global.debug = true;					// Debug mode.
	map_owners = ds_map_create();			// Map with the owners who performs the actions.
	global.player1 = noone;					// Player one.
	global.pause = false;					// Pause.
	previous_mouse_x = mouse_x;				// The previous x position of the mouse.
	previous_mouse_y = mouse_y;				// The previous y position of the mouse.
	button_menu1 = noone;					// Button selected in menu 1.
	button_menu2 = noone;					// Button selected in menu 2.
	gamepad = get_gamepad_connected();		// The first gamepad detected.
	global.gamepad = noone;					// Gamepad.
	mouse_input = true;						// If the interaction is with the mouse.
	
#endregion
#region Game options.
	
	map_languages = noone;									// Map with the settings of the languages.
	global.language = 0;									// Selected language.
	global.volume_master = 10;								// Master volume.
	global.volume_sound = 10;								// Sound volume.
	global.volume_music = 10;								// Music volume.
	global.fullscreen = 1;									// Fullscreen enabled.
	resolutions[0, 0] = 640;								// Option one with the width of the window.
	resolutions[0, 1] = 360;								// Option one with the height of the window.
	resolutions[1, 0] = 1024;								// Option two with the width of the window.
	resolutions[1, 1] = 576;								// Option two with the height of the window.
	resolutions[2, 0] = 1152;								// Option three with the width of the window.
	resolutions[2, 1] = 648;								// Option three with the height of the window.
	resolutions[3, 0] = 1280;								// Option four with the width of the window.
	resolutions[3, 1] = 720;								// Option four with the height of the window.
	resolutions[4, 0] = 1600;								// Option five with the width of the window.
	resolutions[4, 1] = 900;								// Option five with the height of the window.
	resolutions[5, 0] = 1920;								// Option six with the width of the window.
	resolutions[5, 1] = 1080;								// Option six with the height of the window.
	resolutions[6, 0] = 2560;								// Option seven with the width of the window.
	resolutions[6, 1] = 1440;								// Option seven with the height of the window.
	resolutions[7, 0] = 3200;								// Option eight with the width of the window.
	resolutions[7, 1] = 1800;								// Option eight with the height of the window.
	resolutions[8, 0] = 3840;								// Option nine with the width of the window.
	resolutions[8, 1] = 2160;								// Option nine with the height of the window.
	global.resolution = window_get_max_resolution();		// Selected window resolution.
	global.vsync = 1;										// Vertical synchronisation enabled.
	global.double_tap = 1;									// Allow double tap to perform the player dash.
	global.screen_shake_ratio = 1;							//

#endregion
#region Keyboard mapping.

	global.keyboard_up = 87;				// Button to move up with the keyboard.
	global.keyboard_down = 83;				// Button to move down with the keyboard.
	global.keyboard_left = 65;				// Button to move left with the keyboard.
	global.keyboard_right = 68;				// Button to move right with the keyboard.
	global.mouse_confirm = mb_left;			// Button to confirm with the mouse.
	global.keyboard_confirm = vk_enter;		// Button to confirm with the keyboard.
	global.keyboard_cancel = vk_escape;		// Button to cancel with the keyboard.
	global.keyboard_sprint = vk_shift;		// Button to sprint with the keyboard.
	global.keyboard_dash = vk_space;		// Button to dash with the keyboard.
	global.keyboard_interaction = 69;		// Button to interact with the keyboard.
	global.mouse_shot = mb_left;			// Button to shot with the mouse.
	global.mouse_aim = mb_right;			// Button to aim with the mouse.
	global.keyboard_reload = 82;			// Button to reload with the keyboard.
	global.keyboard_switch = vk_tab;		// Button to switch the weapon with the keyboard.
	global.keyboard_grenade = noone;		// Button to throw a grenade with the keyboard.
	
#endregion
#region Gamepad mapping.

	global.gamepad_up = gp_padu;				// Button to move up with the gamepad.
	global.gamepad_down = gp_padd;				// Button to move down with the gamepad.
	global.gamepad_left = gp_padl;				// Button to move left with the gamepad.
	global.gamepad_right = gp_padr;				// Button to move right with the gamepad.
	global.gamepad_confirm = gp_face1;			// Button to confirm with the gamepad.
	global.gamepad_cancel = gp_face2;			// Button to cancel with the gamepad.
	global.gamepad_sprint = gp_stickl;			// Button to sprint with the gamepad.
	global.gamepad_dash = gp_face1;				// Button to dash with the gamepad.
	global.gamepad_interaction = gp_face3;		// Button to interact with the gamepad.
	global.gamepad_shot = gp_shoulderrb;		// Button to shot with the gamepad.
	global.gamepad_aim = gp_shoulderlb;			// Button to aim with the gamepad.
	global.gamepad_reload = noone;				// Button to reload with the gamepad.
	global.gamepad_switch = gp_face4;			// Button to switch the weapon with the gamepad.
	global.gamepad_grenade = noone;				// Button to throw a grenade with the gamepad.
		
#endregion