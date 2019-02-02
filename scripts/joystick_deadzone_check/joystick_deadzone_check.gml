/// @function joystick_deadzone_check()
/// @description Devuelve true si joystick esta dentro de la zona de acción o false en caso contrario.
/// @param axis horizontal
/// @param axis vertical
/// @param deadzone, from 0 to 1
/// @return boolean

#region Parámetros.

	var _horizontal_axis = argument0;		// Eje horizontal del joystick.
	var _vertical_axis = argument1;			// Eje vertical del joystick.
	var _deadzone = argument2;				// Zona muerta del joystick.

#endregion

var _vector = point_distance(0, 0, _horizontal_axis, _vertical_axis);

return _vector >= _deadzone;