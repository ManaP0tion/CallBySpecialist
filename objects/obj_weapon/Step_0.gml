if(currentweapon=1)
	instance_create_depth(obj_player.x, obj_player.y, -1, obj_pistol)
if(currentweapon!=1)
	instance_destroy(obj_pistol)