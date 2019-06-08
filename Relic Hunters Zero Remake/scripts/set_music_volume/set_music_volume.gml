/*
 *	set_music_volume(volume)
 *
 *	Adjusts the gain of the music to the indicated volume.
 *
 *	volume: music volume.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params volume
	var _volume = argument0/10;
	
#endregion

audio_group_set_gain(audiogroup_default, _volume, 0);