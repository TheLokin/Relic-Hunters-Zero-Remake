/// @description Saltar intro

if (instance_exists(rogue) && audio_group_is_loaded(audiogroup_default) && audio_group_is_loaded(ag_sound)) {
	var _logo = instance_find(rogue, 0);
	
	if (_logo != noone && !_logo.visible) {
		instance_destroy();
	} 
}