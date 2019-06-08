#region Game.

	#macro version "Alpha [0.0.1]"
	#macro base_width 640
	#macro base_height 360

#endregion
#region Files.

	#macro file_options working_directory+"options.ini"
	#macro file_lang working_directory+"lang/languages.json"
	#macro dir_lang working_directory+"lang/"
	#macro dir_font working_directory+"lang/font/"
	
#endregion
#region Gamepad.

	#macro joy_deadzone 0.3
	
#endregion
#region Fonts.

	#macro ft_small 6
	#macro ft_medium 12
	#macro ft_large 18
	//#macro ft_ font_add_sprite(spr_ft, ord(" "), false, 2)
	
#endregion
#region Animation.

	#macro draw_over 1
	#macro draw_under -1
	#macro ms_to_s_60 0.00006
	enum animation {
		idle,
		walk,
		sprint,
		dash,
		hit,
		melee,
		throw,
		dig,
		death
	}
	#macro an_loop 0
	#macro an_clamp 1
	#macro pr_low 0
	#macro pr_hight 1

#endregion
#region Colors.

	#macro c_magenta make_color_rgb(239, 4, 68)
	#macro c_firebrick make_color_rgb(184, 49, 35)
	#macro c_cadetblue make_color_rgb(50, 133, 158)
	#macro c_limegreen make_color_rgb(99, 210, 0)
	#macro c_crimson make_color_rgb(178, 0, 65)
	#macro c_cobalt make_color_rgb(0, 88, 178)

#endregion