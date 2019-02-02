/// @function music_update()
/// @description Actualiza el volumen de la música.
/// @param music
/// @return void

#region Parámetros.

	var _music = argument0/10;		// Volumen de la música.
	
#endregion

audio_group_set_gain(audiogroup_default, _music, 0);