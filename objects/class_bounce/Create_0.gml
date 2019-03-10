/// @description Variables

#region Information.

	destroy_delay = random_range(300000, 400000);		// Delay until destroy.
	current_destroy_time = 0;							// Milliseconds since the dirt touched the ground.

#endregion
#region Animation.

	target_direction = 0;						// Direction of the instance.
	angular_speed = random_range(-5, 5);		// Speed changing the angle of the sprite.
	height = 0;									// Height of the instance reached.
	height_max = random_range(-4, 4);			// Maximun height to fall.
	horizontal_speed = random_range(2, 4);		// Speed on the horizontal axis.
	vertical_speed = random_range(-3, -6);		// Speed on the vertical axis.
	speed_friction = 0.05;						// Speed friction.
	gravity_fake = 0.3;							// Gravity fake.

#endregion