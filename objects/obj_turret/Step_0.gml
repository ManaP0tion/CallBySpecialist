if !instance_exists(obj_player) exit;

distance_to_player = distance_to_object(obj_player);
pointdir = point_direction(x, y, obj_player.x, obj_player.y)

if(distance_to_player <= los) && !collision_line(x,y,obj_player.x,obj_player.y, obj_blockset,false,true){
	active = true
	obj_player.HP -= 0.1
}
else{
	active = false
}

if(HP <= 0){
	instance_destroy(self)
}





