/// @function master_update()
/// @description Actualiza el volumen global.
/// @param master
/// @return void

#region Parámetros.

	var _master = argument0/10;		// Volumen global.
	
#endregion

audio_master_gain(_master);