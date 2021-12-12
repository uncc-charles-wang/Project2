if(vspeed > 0 and y < other.y)
{
	instance_destroy(other);
	vspeed = 6;
}

else if canDamage == true
{
	canDamage = false;
	global.lives--;
	hspeed = -10;
	vspeed = -10;
	alarm[0] = room_speed * 2;
	alarm[1] = room_speed / 4;
}