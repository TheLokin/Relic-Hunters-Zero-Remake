/// @description
/// @param color
/// @return void

#region Parámetros.

	var _color = argument0;		// Color.

#endregion

var _obj_fade = instance_create_layer(0, 0, "fade_layer", class_fade);

_obj_fade.color_alpha = _color;