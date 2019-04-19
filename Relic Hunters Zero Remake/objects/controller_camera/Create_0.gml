/// @description Variables

camera = camera_create();																			// Camera.
camera_set_view_mat(camera, matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0));						// Matriz de la vista.
camera_set_proj_mat(camera, matrix_build_projection_ortho(base_width, base_height, 1, 32000));		// Matriz de proyección.
view_widht = camera_get_view_width(camera);															// Anchura de la cámara.
view_height = camera_get_view_height(camera);														// Altura de la cámara.
x_to = x;																							// Posición en el eje horizontal de la cámara a la que se dirige.
y_to = y;																							// Posición en el eje vertical de la cámara a la que se dirige.

weapon_range = 0;

#region Screen shake.

	shake_screen = 0;
	shake_direction = 0;
	shake_recovery = 4;
	shake_max = 50;

#endregion
#region Zoom.

	zoom = 1;
	current_zoom = zoom;
	zoom_speed_in = 0.015;
	zoom_speed_out = 0.01;
	
#endregion