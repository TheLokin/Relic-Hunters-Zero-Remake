/// @function get_font()
/// @description Devuelve la fuente asociada al código proporcionado.
/// @param code
/// @return font

#region Parámetros.

	var _code = argument0;		// Código de la fuente.
	
#endregion

if (is_array(controller_game.font_text)) {
	switch (_code) {
		case ft_small:
			if (array_length_1d(controller_game.font_text) > ft_small) {
				return controller_game.font_text[ft_small];
			}
		break;
		case ft_medium:
			if (array_length_1d(controller_game.font_text) > ft_medium) {
				return controller_game.font_text[ft_medium];
			}
		break;
		case ft_large:
			if (array_length_1d(controller_game.font_text) > ft_large) {
				return controller_game.font_text[ft_large];
			}
		break;
		default:
			return noone;
		break;
	}
} else {
	return noone;
}