#region Animation.

	#macro ms_to_s_60 0.00006
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
	#macro an_loop 0
	#macro an_clamp 1
	#macro an_clamp_forever 2
	#macro pr_low 0
	#macro pr_high 1

#endregion
#region Resolución.

	#macro base_width 640
	#macro base_height 360

#endregion
#region Archivos.

	#macro file_options working_directory+"options.ini"
	#macro dir_lang working_directory+"language/"
	#macro dir_font working_directory+"language/font/"
	
#endregion
#region Fuentes.

	#macro ft_small 0
	#macro ft_medium 1
	#macro ft_large 2

#endregion
#region Teclado/Mando.

	#macro vk_block 144
	#macro vk_capital 20
	#macro joy_deadzone 0.3
	
#endregion
#region Colors.

	#macro c_magenta make_color_rgb(239, 4, 68)
	#macro c_health make_color_rgb(184, 49, 35)
	#macro c_shield make_color_rgb(50, 133, 158)
	#macro c_weapon_light make_color_rgb(99, 210, 0)
	#macro c_weapon_medium make_color_rgb(178, 0, 65)
	#macro c_weapon_heavy make_color_rgb(0, 88, 178)

#endregion