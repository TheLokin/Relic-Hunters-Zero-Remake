/// @description Liberar estructuras de datos y guardar opciones

if (ds_exists(grid_button, ds_type_grid)) {
	ds_grid_destroy(grid_button);
}
options_save();