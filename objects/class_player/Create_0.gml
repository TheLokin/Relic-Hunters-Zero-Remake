/// @description Variables

#region Information.

	name = "NO NAME";		// Name.

#endregion
#region Spawn.

	is_vulnerable = false;								// Vulnerable player.
	vulnerable_time = room_speed*2;						// Minimum time to become vulnerable.
	alarm[0] = vulnerable_time;							// Cooldown to become vulnerable.
	instance_create_layer(0, 0, "GUI", player_hud);		// Hud.

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

	is_sprinting = false;
	sprint_speed_max = 6;
	sprint_stamina = 0.3;			// Coste en estamina de cada sprint.
	sprint_stamina_min = 10;		// Estamina mínima para poder sprintar.

#endregion
#region Dodge.

	is_dodging = false;
	dodge_friction = 0.2;
	dodge_stamina = 50;		// Coste en estamina de cada esquive.

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

	sprite_face = noone;
	sprite_idle = noone;
	sprite_walk = noone;
	sprite_sprint = noone;
	sprite_dash = noone;
	sprite_dash_fx = noone;
	sprite_hit = noone;
	sprite_melee = noone;
	sprite_dig = noone;
	sprite_death = noone;
	enum animation {
		idle,
		walk,
		sprint,
		dash,
		hit,
		melee,
		dig,
		death
	}
	current_animation = animation.idle;
	animation_index = 0;
	animation_speed = 0.16;
	animation_type = an_loop;
	animation_priority = pr_low;
	
#endregion
#region Vida

	hp_max = 100;						// Vida máxima.			
	hp = hp_max;						// Vida.
	hp_regen_time = room_speed;			// Tiempo de regeneración.
	hp_regen_time_current = 0;			// Tiempo entre regeneraciones.
	hp_regen_amount = 2;				// Máximo de regeneraciones.

#endregion
#region Energía

	energy_max = 100;									// Energía máxima.
	energy = energy_max;								// Energía.
	energy_regen_time = room_speed*2.5;					// Tiempo de regeneración.
	energy_regen_time_regular = energy_regen_time;		// Tiempo de regeneración base.
	energy_regen_time_relic = energy_regen_time;		// Tiempo de regeneración con reliquias.
	
	overshield = 0;				// Sobre escudo.
	supershield = false;		// Super escudo.

#endregion
#region Estamina

	stamina_max = 100;											// Estamina máxima.
	stamina = stamina_max;										// Estamina.
	stamina_regeneration = 0.32;								// Tiempo de regeneración.
	stamina_regeneration_regular = stamina_regeneration;		// Tiempo de regeneración base. no vi que se usase
	stamina_regeneration_relic = stamina_regeneration*2;		// Tiempo de regeneración con reliquias. no vi que se usase
	
#endregion
#region Sound.

	audio_emitter = audio_emitter_create();

#endregion