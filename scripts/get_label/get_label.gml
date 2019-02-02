/// @function get_label()
/// @description Devuelve la etiqueta asociada al código proporcionado.
/// @param code
/// @return label

#region Parámetros.

	var _key = argument0;		// Clave a buscar.

#endregion

if (ds_exists(controller_game.map_language, ds_type_map)) {
	var _value = ds_map_find_value(controller_game.map_language, _key);
	
	if (is_undefined(_value)) {
		return "MISSING LABEL";
	} else {
		return _value;
	}
} else {
	return "MISSING LABEL";
}