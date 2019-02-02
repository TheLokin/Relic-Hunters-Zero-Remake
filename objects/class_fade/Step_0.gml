/// @description Opacidad

current_alpha = clamp(current_alpha-alpha_speed, 0, 1);

if (current_alpha == 0) {
	instance_destroy();
}