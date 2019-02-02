/// @function approach()

#region Parámetros.

	var _start = argument0;
	var _end = argument1;
	var _shift = argument2;

#endregion

if (_start < _end){
    return min(_start+_shift, _end); 
} else {
    return max(_start-_shift, _end);
}