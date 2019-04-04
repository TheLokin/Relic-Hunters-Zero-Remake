/// @description Actions

if (owner.energy != 0 && owner.energy < owner.energy_max) {
	draw_shield = true;
} else {
	alarm[0] = interval_duration;
}
if (owner.energy == 0) {
	draw_health = true;
} else {
	alarm[1] = interval_duration;
}
if (owner.hp >= owner.hp_max) {
	alarm[1] = interval_duration;
}
if (draw_health || draw_shield) {
	alpha = 1;
} else if (alpha > 0) {
	alpha -= alpha_speed;
}