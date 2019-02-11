/*
 *	audio_play(emitter, loop, priority, sound1, sound2, ...)
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

	var _emitter = argument[0];
	var _loop = argument[1];
	var _priority = argument[2];

#endregion

audio_play_sound_on(_emitter, argument[irandom_range(3, argument_count-1)], _loop, _priority);