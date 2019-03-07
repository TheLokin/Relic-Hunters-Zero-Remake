/// @description Dig spot

if (global.debug) {
	var _width = sprite_width/2;
	var _height = sprite_height/2;
	
	draw_set_color(c_black);
	draw_rectangle(x-_width, y-_height, x+_width, y+_height, true);
}