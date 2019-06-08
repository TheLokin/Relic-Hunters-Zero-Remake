/// @description Variables

#region Information.

	owner = noone;				// The owner of the gun.
	name = "unsigned";			// Gun name.
	color = c_white;			// The color of the gun to show in the hud.
	is_selected = false;		// If the owner has select the gun.
	
#endregion
#region Ammo.

	current_ammo = 10;

#endregion
#region Projectile.

	projectile = projectile_bullet;
	projectile_range = 150;

#endregion
#region Reload.

	is_reloading = false;			// If the gun is reloading.
	current_reload_time = 0;		//
	reload_duration = 1500000;		//

#endregion
#region Recoil.

	current_recoil = 0;			//
	recoil_speed = 0;			//
	recoil_max = 7;				//
	recoil_return = 1.25;		//

#endregion
shot = false;