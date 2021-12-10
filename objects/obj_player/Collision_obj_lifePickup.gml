if global.lives < 3
{
	global.lives++;
	instance_destroy(obj_lifePickup);
}