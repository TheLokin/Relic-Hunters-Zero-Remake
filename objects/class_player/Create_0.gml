/// @description Variables

#region Information.

	name = "NO NAME";		// Name.

#endregion
#region Spawn.

	is_vulnerable = false;										// If the player is vulnerable.
	invulnerable_time = room_speed*2;							// Time to become the player vulnerable.
	alarm[0] = invulnerable_time;								// Cooldown to become the player vulnerable.
	hud = instance_create_layer(0, 0, "Hud", player_hud);		// Hud.

#endregion
#region Health.
	
	hp_max = 100;							// Maximum health.			
	hp = hp_max;							// Health.
	hp_regeneration_time = room_speed;		// Regeneration time.
	current_hp_regeneneration_time = 0;		// Tiempo entre regeneraciones.
	hp_regen_amount = 2;					// Máximo de regeneraciones.

#endregion
#region Energía.

	energy_max = 100;											// Energía máxima.
	energy = energy_max;										// Energía.
	energy_regeneration_time = room_speed*2.5;					// Tiempo de regeneración.
	
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
#region Movement.

	move_acceleration = 1.5;
	move_friction = 0.45;
	move_speed = 0;
	move_direction = 0;
	
	move_speed_max = 4;
	
	is_aiming = false;
	aiming_speed_max = 3;

#endregion
#region Sprint.

	is_sprinting = false;				// If the player's state is sprinting.
	sprint_speed_max = 5.5;				// Speed sprinting.
	can_sprint = true;					// Sprint available.
	sprint_delay = room_speed*0.2;		// Delay between sprints.
	sprint_stamina = 0.3;				// Stamina cost of each sprint.
	sprint_stamina_min = 10;			// Minimum stamina to sprint.

#endregion
#region Dodge.

	is_dodging = false;					// If the player's state is dodging.
	dodge_friction = 0.2;
	dodge_stamina = stamina_max/2;		// Coste en estamina de cada esquive.
	
	dodge_speed = 35;
	current_dodge_time = 0;
	dodge_time = room_speed*0.4;
	
	dodge_direction = 0;
	
	current_dash_time = 0;
	dash_time = room_speed*0.25;

#endregion
#region Melee.

	is_meleeing = false;
	is_melee_dashing = false;
	melee_hit_frame = 5;
	
	melee_stamina = 0;		// Coste en estamina de golpear cuerpo a cuerpo.

#endregion
#region Throw granade.

	is_throwing = false;

#endregion
#region Dig.

	is_digging = false;
	dig_depth = 0;
	dig_speed = 0;
	dig_depth_max = 42; //Esto igual es la mitad
	dig_rate = room_speed*0.3;
	current_dig_rate = dig_rate;
	dir_color = c_magenta;

#endregion
#region Footsteps.

	footstep_time = room_speed*0.2;
	current_footstep_time = 0;

#endregion
#region Animation.

	sprite_face = noone;						// Sprite to show in the hud.
	sprite_idle = noone;						// Sprite with the animation when the player is idle.
	sprite_walk = noone;						// Sprite with the animation when the player is walking.
	sprite_sprint = noone;						// Sprite with the animation when the player is sprinting.
	sprite_sprint_fx = spr_player_sprint;		// Sprite with the effect when the player is sprinting.
	sprite_dash = noone;						// Sprite with the animation when the palyer is dashing.
	sprite_dash_fx = noone;						// Sprite with the effect when the player is dashing.
	sprite_hit = noone;							// Sprite with the animation when the player is hit.
	sprite_melee = noone;						// Sprite with the animation when the player is meleeing.
	sprite_dig = noone;							// Sprite with the animation when the player is digging.
	sprite_death = noone;						// Sprite with the animation when the player dies.
	enum animation {							// Animations that can be played.
		idle,
		walk,
		sprint,
		dash,
		hit,
		melee,
		dig,
		death
	}
	current_animation = animation.idle;			// Animation playing.
	animation_index = 0;						// Frame of the animation.
	animation_speed = 0.16;						// Speed of the animation.
	animation_type = an_loop;					// Duration of the animation.
	animation_priority = pr_low;				// Priority of the animation.
	
#endregion
#region Sound.

	audio_emitter = audio_emitter_create();

#endregion