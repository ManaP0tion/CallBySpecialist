if !instance_exists(obj_player) exit;

distance_to_player = distance_to_object(obj_player);
pointdir = point_direction(x, y, obj_player.x, obj_player.y)

if (distance_to_player <= los) && !collision_line(x,y,obj_player.x,obj_player.y, obj_blockset,false,true)
{
	global.silent += 10
	activate = true
	seedir = point_direction( x, y, obj_player.x, obj_player.y)
	show_debug_message("activate")
}

else if(distance_to_player > los){
	activate = false
	global.silent -= 0.5
	if(global.silent == -0.5){
		global.silent = 0
	}
	show_debug_message("deactivated")
}

if(HP <= 0){
	instance_destroy(self)
}