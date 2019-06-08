/// @description Surface

if (!surface_exists(surface)) {
	surface = surface_create(room_width, room_height);
} else {
	draw_surface(surface, 0, 0);
}