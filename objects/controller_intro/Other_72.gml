/// @description Audio cargado

if (instance_exists(obj_rogue_logo) && audio_group_is_loaded(audiogroup_default) && audio_group_is_loaded(ag_sound)) {
	var _logo = instance_find(obj_rogue_logo, 0);
	
	if (_logo != noone) {
		_logo.visible = true;
	}
}