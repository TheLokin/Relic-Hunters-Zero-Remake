/// @description Variables

#region Information.

	is_elite = false;
	add_draw(id);											// Add to draw.
	link_draw(id, create_dynamic_bar(id), draw_over);		// Link the dynamic bar to draw with the enemy.
	
#endregion
#region Spawn.

	is_vulnerable = true;		// If the enemy is vulnerable.

#endregion
#region Health.
	
	hp_max = 100;		// Maximum health.			
	hp = hp_max;		// Health.

#endregion
#region Energy.

	energy_max = 100;								// Maximum energy.
	energy = energy_max;							// Energy.
	energy_regeneration_time = room_speed*2.5;		// Regeneration time.
	
	overshield = 0;				// Sobre escudo.
	supershield = false;		// Super escudo.

#endregion
#region Movement.

	//path = path_add();
	move_speed = 0;			// Enemy speed.
	move_direction = 0;		// Enemy direction.

#endregion
#region Walk.

	

#endregion
#region Dash.

	is_dashing = false;		// If the enemy's state is dashing.

#endregion
#region Hit.

	hit_taken = false;		// If the enemy was hit.

#endregion
#region Grenade.

	is_throwing = false;		// If the enemy is throwing a grenade.

#endregion
#region AI.

	want_activate_ai = false;		// If you want to activate the artificial intelligence.
	is_ai_active = false;			// If the artificial intelligence is active.
	action_range = 600;				// Range where a player can be detected.

#endregion
#region Animation.

	sprite_detection_fx = spr_detection;				// Sprite with the effect when the enemy detect a player.
	sprite_idle = noone;								// Sprite with the animation when the enemy is idle.
	sprite_walk = noone;								// Sprite with the animation when the enemy is walking.
	sprite_sprint = noone;								// Sprite with the animation when the enemy is sprinting.
	sprite_dash = noone;								// Sprite with the animation when the enemy is dashing.
	sprite_dash_fx = noone;								// Sprite with the effect when the enemy is dashing.
	sprite_hit = noone;									// Sprite with the animation when the enemy is hit.
	sprite_death = noone;								// Sprite with the animation when the enemy dies.
	animation_init(animation.idle, 0.16, an_loop);		// Initialize the animation engine.
	
#endregion
#region Sound.

	audio_emitter = audio_emitter_create();		// Enemy audio emitter.

#endregion