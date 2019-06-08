/*
 *	audio_play(emitter, loop, priority, sound)
 *
 *	Plays one of the sounds passed as parameters.
 *
 *	emitter: the index of the emitter to use.
 *	loop: flags the sound as looping or not.
 *	priority: set the channel priority for the sound.
 *	sound: the differents sounds to choose from.
 *
 *	Return N/A.
 */

#region Parameters.

	/// @params emitter
	var _emitter = argument0;
	/// @params loop
	var _loop = argument1;
	/// @params priority
	var _priority = argument2;
	/// @params sound
	var _sound = argument3;

#endregion


audio_play_sound_on(_emitter, _sound, _loop, _priority);