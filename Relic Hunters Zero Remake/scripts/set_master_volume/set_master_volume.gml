/*
 *	set_master_volume(volume)
 *
 *	Adjusts the gain of the master to the indicated volume.
 *
 *	volume: master volume.
 *
 *	Return: N/A.
 */

#region Parameters.

	var _volume = argument0/10;
	
#endregion

audio_master_gain(_volume);