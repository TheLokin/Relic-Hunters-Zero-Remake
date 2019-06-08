/*
 *	object_get_ycenter(index)
 *
 *	Returns the y on the vertical axis of the center point
 *	of the collision mask of the object inside the room.
 *
 *	index: the object index.
 *
 *	Return: real.
 */

#region Parameters.

	/// @params index
	var _index = argument0;

#endregion

return _index.bbox_top+(_index.bbox_bottom-_index.bbox_top)/2;