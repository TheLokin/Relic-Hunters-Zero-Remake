/// @description Detector arrow

var _direction = point_direction(x, y, dig_spot.x, dig_spot.y);

draw_sprite_ext(spr_detector_arrow, 0, object_get_xcenter(owner)+lengthdir_x(48, _direction),
				object_get_ycenter(owner)+lengthdir_y(48, _direction), 0.5, 0.5, _direction, c_blue, alpha);