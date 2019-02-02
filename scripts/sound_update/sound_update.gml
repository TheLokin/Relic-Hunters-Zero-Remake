/// @function sound_update()
/// @description Actualiza el volumen del sonido.
/// @param sound
/// @return void

#region Parámetros.

	var _sound = argument0/10;		// Volumen del sonido.
	
#endregion

audio_group_set_gain(ag_sound, _sound, 0);