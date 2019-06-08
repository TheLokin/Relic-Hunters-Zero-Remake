/*
 *	set_sound_volume(volume)
 *
 *	Adjusts the gain of the sound to the indicated volume.
 *
 *	volume: sound volume.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params volume
	var _volume = argument0/10;
	
#endregion

audio_group_set_gain(ag_sound, _volume, 0);