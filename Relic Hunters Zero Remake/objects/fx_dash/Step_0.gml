/// @description Actions

timer++;
if (timer >= owner.move_speed/steps) {
	x = owner.x;
	y = owner.y;
	timer = 0;
}
image_xscale = owner.image_xscale;
if (!owner.is_dashing) {
	instance_destroy();
}