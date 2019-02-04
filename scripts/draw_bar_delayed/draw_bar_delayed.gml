/*
 *	draw_bar_delayed(x1, y1, x2, y2, value, value_max, increment, color)
 *
 *	Draws a bar that shows the value in the direction it indicates before updating.
 *
 *	x1: the x coordinate of the left of the bar.
 *	y1: the y coordinate of the top of the bar.
 *	x2: the x coordinate of the right of the bar.
 *	y2: the y coordinate of the bottom of the bar.
 *	value: the variable which defines the value of the bar.
 *	value_max: the variable which defines total value of the bar.
 *	increment: true if the value is going to increase or false otherwise.
 *	color: the color of the bar.
 *
 *	Returns: N/A.
 */

#region Parameters.

	var _x1 = argument0;
	var _y1 = argument1;
	var _x2 = argument2;
	var _y2 = argument3;
	var _value = argument4;
	var _value_max = argument5;
	var _increment = argument6;
	var _color = argument7;

#endregion

var _delay_speed = 0.008;
var _delay_time = room_speed*0.6;
var _delay_value = 0;

if (_increment) {
	draw_healthbar(_x1, _y1, _x2, _y2, _value/_value_max*100, c_black, c_white, c_white, 0, false, false);
	draw_healthbar(_x1, _y1, _x2, _y2, _delay_value/_value_max*100, c_black, _color, _color, 0, false, false);
} else {
	draw_healthbar(_x1, _y1, _x2, _y2, _delay_value/_value_max*100, c_black, _color, _color, 0, false, false);
	draw_healthbar(_x1, _y1, _x2, _y2, _value/_value_max*100, c_black, c_white, c_white, 0, false, false);
}