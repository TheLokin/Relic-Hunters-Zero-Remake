/*
 *	string_trim(string)
 *
 *	Returns a copy of the string with leading and trailing whitespace omitted.
 *
 *	string: string to trim.
 *
 *	Return: string.
 */

#region Parameters.

	var _string = argument0;

#endregion

for (var _i = 1; _i<= string_length(_string); _i++) {
	var _byte = string_byte_at(_string, _i);
	
	if (_byte != 9 && _byte != 10 && _byte != 13 && _byte != 32) {
		_string = string_delete(_string, 1, _i-1);
		break;
	}
}
var _length = string_length(_string);

for (var _i = _length; _i > 0; _i--) {
	var _byte = string_byte_at(_string, _i);
	
	if (_byte != 9 && _byte != 10 && _byte != 13 && _byte != 32) {
		_string = string_delete(_string, _i+1, _length);
		break;
	}
}

return _string;