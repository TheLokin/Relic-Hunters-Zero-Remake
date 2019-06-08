/// @description Variables

#region Information.
	
	name = "unsigned";										// Player name.
	add_draw(id);											// Add to draw.
	link_draw(id, create_dynamic_bar(id), draw_over);		// Link the dynamic bar to draw with the player.
	
#endregion
#region Spawn.
	
	is_vulnerable = false;						// If the player is vulnerable.
	invulnerable_duration = room_speed*0.2;		// Duration until the player is vulnerable.
	alarm[0] = invulnerable_duration;			// Cooldown to become the player vulnerable.
	
#endregion
#region Health.
	
	hp_max = 100;							// Maximum health.
	hp = hp_max;							// Health.
	hp_regeneration_time = room_speed;		// Regeneration time.
	current_hp_regeneneration_time = 0;		// Tiempo entre regeneraciones.
	hp_regen_amount = 2;					// Máximo de regeneraciones.

#endregion
#region Energy.

	energy_max = 100;								// Maximum energy.
	energy = energy_max;							// Energy.
	energy_regeneration_time = room_speed*2.5;		// Regeneration time.
	
	//energy_regeneration_time_regular = energy_regeneration_time;		// Tiempo de regeneración base.
	//energy_regeneration_time_relic = energy_regeneneration_time;			// Tiempo de regeneración con reliquias.
	
	overshield = 0;				// Sobre escudo.
	supershield = false;		// Super escudo.

#endregion
#region Stamina.

	stamina_max = 100;				// Maximum stamina.
	stamina = stamina_max;			// Stamina.
	stamina_regeneration = 0.3;		// Stamina regenerated per step.
	
	stamina_regeneration_regular = stamina_regeneration;		// Tiempo de regeneración base. no vi que se usase
	stamina_regeneration_relic = stamina_regeneration*2;		// Tiempo de regeneración con reliquias. no vi que se usase
	
#endregion
#region Crosshair.

	crosshair_x = 0;				// Position on the horizontal axis of the player's crosshair.
	crosshair_y = 0;				// Position on the vertical axis of the player's crosshair.
	crosshair_direction = 0;		// Direction of the crosshair with the gamepad.
	
#endregion
#region Movement.

	allow_movement = false;			// Allow player movement.
	move_acceleration = 1.5;		// Player acceleration.
	move_friction = 0.45;			// Friction when the player is walking.
	move_speed = 0;					// Player speed.
	move_direction = 0;				// Player direction.

#endregion
#region Walk.

	walk_speed_max = 4;						// Speed when the player is walking.
	walk_footstep_duration = 300000;		// Duration between footsteps in milliseconds when the player is walking.
	current_footstep_time = 0;				// Milliseconds since the last footstep.

#endregion
#region Sprint.

	is_sprinting = false;					// If the player is sprinting.
	can_sprint = true;						// Sprint available.
	sprint_delay = room_speed*0.2;			// Delay between two sprint.
	sprint_speed_max = 5.5;					// Speed when the player is sprinting.
	sprint_stamina = 0.3;					// Stamina cost of each sprint.
	sprint_stamina_min = 10;				// Minimum stamina to sprint.
	sprint_footstep_duration = 250000;		// Duration between footsteps in milliseconds when the player is sprinting.
	sprint_duration = 600000;				// Duration between sprint effect in milliseconds when the player is sprinting.
	current_sprint_time = 0;				// Milliseconds since the last sprint effect.

#endregion
#region Dash.

	is_dashing = false;					// If the player is dashing.
	dash_friction = 0.2;				// Friction when the player is dashing.
	dash_speed = 10;					// Speed when the player is dashing.
	dash_duration = 400000;				// Duration of the dash in milliseconds.
	current_dash_time = 0;				// Milliseconds since the dash started.
	dash_stamina = stamina_max/2;		// Stamina cost of each dash.
	keyboard_init_doubletap(30);		// Initialize the doubletap for the keyboard input.
	gamepad_init_doubletap(30);			// Initialize the doubletap for the gamepad input.

#endregion
#region Melee.

	is_meleeing = false;
	is_melee_dashing = false;

#endregion
#region Dig.

	is_digging = false;		// If the player is digging.
	dig_speed = 4;			// Speed digging.
	dig_depth = 0;			// Current digging depth.

#endregion
#region Interaction.

	is_interacting = false;		// If the player is interacting with something.
	interaction = noone;

#endregion
#region Weapon.

	is_aiming = false;				// If the player's state is aiming.	
	aiming_speed_max = 3;			// Speed when the player is aiming.
	weapon_selected = noone;		// The weapon selected by the player.
	weapon1 = noone;				// The weapon one.
	weapon2 = noone;				// The weapon two.
	
	
	/* Pruebas */
	weapon1 = create_gun(gun_pistol, id);
	link_draw(id, weapon1, draw_over);
	weapon2 = create_gun(gun_pistol, id);
	link_draw(id, weapon2, draw_under);
	weapon_selected = weapon1;
	weapon_selected.is_selected = true;
	/* Pruebas */

#endregion
#region Grenade.

	is_throwing = false;		// If the player is throwing a grenade.
	grenades = 2;
	grenade_speed = 7;

#endregion
#region Animation.
	
	sprite_face = noone;								// Sprite about the player's health to show in the hud.
	sprite_idle = noone;								// Sprite with the animation when the player is idle.
	sprite_walk = noone;								// Sprite with the animation when the player is walking.
	sprite_sprint = noone;								// Sprite with the animation when the player is sprinting.
	sprite_sprint_fx = spr_sprint;						// Sprite with the effect when the player is sprinting.
	sprite_dash = noone;								// Sprite with the animation when the palyer is dashing.
	sprite_dash_fx = noone;								// Sprite with the effect when the player is dashing.
	sprite_hit = noone;									// Sprite with the animation when the player is hit.
	sprite_melee = noone;								// Sprite with the animation when the player is meleeing.
	sprite_throw = noone;								// Sprite with the animation when the player is throwing.
	sprite_dig = noone;									// Sprite with the animation when the player is digging.
	sprite_death = noone;								// Sprite with the animation when the player dies.
	animation_init(animation.idle, 0.16, an_loop);		// Initialize the animation engine.
	
#endregion
#region Sound.

	audio_emitter = audio_emitter_create();		// Player audio emitter.

#endregion