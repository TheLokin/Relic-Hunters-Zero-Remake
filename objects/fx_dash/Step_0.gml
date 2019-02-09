/// @description Actions

timer++;
if (timer >= steps) {
	x = owner.x;
	y = owner.y;
	image_xscale = owner.image_xscale;
	timer = 0;
}
if (!owner.is_dashing) {
	instance_destroy();
}