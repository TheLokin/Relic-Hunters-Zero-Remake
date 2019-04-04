/*
 *	object_get_xcenter(index)
 *
 *	Returns the x on the horizontal axis of the center point
 *	of the collision mask of the object inside the room.
 *
 *	index: the object index.
 *
 *	Return: real.
 */

#region Parameters.

	var _index = argument0;

#endregion

return _index.bbox_left+(_index.bbox_right-_index.bbox_left)/2;