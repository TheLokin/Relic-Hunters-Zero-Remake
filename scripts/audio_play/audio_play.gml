/// audio_play(emitter, loop, priority, audio1, audio2, ...)
/// Plays one of the sounds passed as parameters.

#region Parameters.

	var _emitter = argument[0];
	var _loop = argument[1];
	var _priority = argument[2];

#endregion

var _sound = argument[irandom_range(3, argument_count-1)];

audio_play_sound_on(_emitter, _sound, _loop, _priority);