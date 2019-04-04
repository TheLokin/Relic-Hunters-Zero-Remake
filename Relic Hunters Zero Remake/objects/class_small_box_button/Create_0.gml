/// @description Variables

event_inherited();

#region Botones.

	minus_button = instance_create_layer(x+sprite_get_width(mask_index)-56, y, "button_layer2", class_arrow_button);		// Botón izquierdo con el que interacciona.
	minus_button.image_xscale = -1;																							// Orientación del botón izquierdo.
	minus_button.box_button = id;																							// Botón con el que interacciona.
	plus_button = instance_create_layer(x+sprite_get_width(mask_index)-8, y, "button_layer2", class_arrow_button);		// Botón derecho con el que interacciona.
	plus_button.image_xscale = 1;																							// Orientación del botón derecho.
	plus_button.box_button = id;																							// Botón con el que interacciona.
	
#endregion
#region Texto.

	label_text_x = x+sprite_get_width(mask_index)-72;				// Posición en el eje horizontal del texto.
	label_text_y = y+sprite_get_height(mask_index)/2;				// Posición en el eje vertical del texto.
	label_text_second_x = x+sprite_get_width(mask_index)-32;		// Posición en el eje horizontal del texto secundario.
	label_text_second_y = y+sprite_get_height(mask_index)/2;		// Posición en el eje vertical del texto secundario.
	
#endregion