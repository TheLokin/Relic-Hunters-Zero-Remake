/*
 *	create_dynamic_bar(owner)
 *
 *	Create and assign a dynamic bar to the owner.
 *
 *	owner: the owner to assign the dynamic bar.
 *
 *	Return: dynamic_bar.
 */

#region Parameters.

	/// @params owner
	var _owner = argument0;

#endregion

with (instance_create_layer(_owner.x, _owner.y, "interactive", dynamic_bar)) {
	owner = _owner;
	
	return id;
}