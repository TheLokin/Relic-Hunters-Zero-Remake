/*
 *	create_detection_fx(owner)
 *
 *	Plays the detection effect for the owner and search for others to activate.
 *
 *	owner: the owner that perform the detection.
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params owner
	var _owner = argument0;

#endregion

var _detection = instance_create_layer(_owner.x, _owner.y, "interactive", fx_detection);
var _enemies_activated = 0;

_detection.sprite_index = _owner.sprite_detection_fx;
for (var _i = 0; _i < instance_number(class_enemy); _i++) {
	var _enemy = instance_find(class_enemy, _i);
	
	if (point_distance(_owner.x, _owner.y, _enemy.x, _enemy.y) < 128) {
		_enemy.want_activate_ai = true;
		_enemies_activated++;
		if (_enemies_activated == 5) {
			return;
		}
	}
}