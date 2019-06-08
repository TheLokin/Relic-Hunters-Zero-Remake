/*
 *	create_gun(gun, owner)
 *
 *	Creates and assigns the gun to the owner.
 *
 *	gun: the gun to create.
 *	owner: the owner to assign the gun.
 *
 *	Return: class_gun.
 */

#region Parameters.

	/// @params gun
	var _gun = argument0;
	/// @params owner
	var _owner = argument1;
	
#endregion

with (instance_create_layer(_owner.x, _owner.y, "interactive", _gun)) {
	owner = _owner;

	return id;
}