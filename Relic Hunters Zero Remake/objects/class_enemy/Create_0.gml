/// @description Variables

#region Information.

	is_elite = false;

#endregion
#region Spawn.

	is_vulnerable = true;																// If the enemy is vulnerable.
	add_owner(id);																		// Create the list of instances linked to the enemy.
	link_owner(id, instance_create_layer(x, y, "interactive_over", dynamic_bar));		// Link the dynamic bar to the enemy.

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

	sprite_detection_fx = spr_detection;		// Sprite with the effect when the enemy detect a player.
	sprite_idle = noone;						// Sprite with the animation when the enemy is idle.
	sprite_walk = noone;						// Sprite with the animation when the enemy is walking.
	sprite_sprint = noone;						// Sprite with the animation when the enemy is sprinting.
	sprite_dash = noone;						// Sprite with the animation when the enemy is dashing.
	sprite_dash_fx = noone;						// Sprite with the effect when the enemy is dashing.
	sprite_hit = noone;							// Sprite with the animation when the enemy is hit.
	sprite_death = noone;						// Sprite with the animation when the enemy dies.
	current_animation = animation.idle;			// Animation playing.
	animation_index = 0;						// Frame of the animation.
	animation_speed = 0.16;						// Speed of the animation.
	animation_type = an_loop;					// Duration of the animation.
	animation_priority = pr_low;				// Priority of the animation.
	
#endregion
#region Sound.

	audio_emitter = audio_emitter_create();		// Enemy audio emitter.

#endregion