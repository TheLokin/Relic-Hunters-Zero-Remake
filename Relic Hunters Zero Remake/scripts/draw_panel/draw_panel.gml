/*
 *	draw_panel(sprite, x, y, width, height, stretched)
 *
 *	This script draws panels/boxes from a sprite with 9 frames containing all slices
 *	in the following order: top left, top center, top right, middle left, middle center,
 *	middle left, bottom right, bottom center and bottom left.
 *
 *	sprite: the panel sprite.
 *	x: the x coordinate.
 *	y: the y coordinate.
 *	width: width of the panel.
 *	height: height of the panel.
 *	stretched: stretch the panel (true) or tile (false).
 *
 *	Return: N/A.
 */

#region Parameters.

	/// @params sprite
	var _sprite = argument0;
	/// @params x
	var _x = argument1;
	/// @params y
	var _y = argument2;
	/// @params width
	var _width = argument3;
	/// @params height
	var _height = argument4;
	/// @params stretched
	var _stretched = argument5;

#endregion

var _sprite_width = sprite_get_width(_sprite);
var _sprite_height = sprite_get_height(_sprite);

draw_sprite(_sprite, 0, _x, _y);   
draw_sprite(_sprite, 2, _x+_width-_sprite_width, _y);
draw_sprite(_sprite, 6, _x, _y+_height-_sprite_height);
draw_sprite(_sprite, 8, _x+_width-_sprite_width, _y+_height-_sprite_height); 
if (_stretched) {
	draw_sprite_stretched(_sprite, 1, _x+_sprite_width, _y, _width-_sprite_width*2, _sprite_height);
	draw_sprite_stretched(_sprite, 3, _x, _y+_sprite_height, _sprite_width, _height-_sprite_height*2);
	draw_sprite_stretched(_sprite, 4, _x+_sprite_width, _y+_sprite_height, _width-_sprite_width*2, _height-_sprite_height*2);
	draw_sprite_stretched(_sprite, 5, _x+_width-_sprite_width, _y+_sprite_height, _sprite_width, _height-_sprite_height*2);
	draw_sprite_stretched(_sprite, 7, _x+_sprite_width, _y+_height-_sprite_height, _width-_sprite_width*2, _sprite_height);
} else {
	_width += _width mod _sprite_width;
	_height += _height mod _sprite_height;
	
	var _tile_width = (_width-_sprite_width*2)/_sprite_width;
	var _tile_height = (_height-_sprite_height*2)/_sprite_height;
   
	for (var _x_pos = 1; _x_pos <= _tile_width; _x_pos++) {
		draw_sprite(_sprite, 1, _x+_x_pos*_sprite_width, _y);
		for (var _y_pos = 1; _y_pos <= _tile_height; _y_pos++) {
			draw_sprite(_sprite, 4, _x+_x_pos*_sprite_width, _y+_y_pos*_sprite_height);
		}
		draw_sprite(_sprite, 7, _x+_x_pos*_sprite_width, _y+_height-_sprite_height);
    }
	for (_y_pos = 1; _y_pos <= _tile_height; _y_pos++) {
		draw_sprite(_sprite, 3, _x, _y+_y_pos*_sprite_height);
		draw_sprite(_sprite, 5, _x+_width-_sprite_width, _y+_y_pos*_sprite_height);
	}
}