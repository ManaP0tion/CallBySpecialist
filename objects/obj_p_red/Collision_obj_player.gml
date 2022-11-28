if(instance_exists(obj_p_blu)){
	obj_player.x = obj_p_blu.x + 20
	obj_player.y = obj_p_blu.y
}


if(instance_exists(obj_p_blu)){
	if(global.warp_r == 1){	// up
		obj_player.x = obj_p_blu.x + 20
		obj_player.y = obj_p_blu.y
	}
	if(global.warp_r == 2){	// down
		obj_player.x = obj_p_blu.x
		obj_player.y = obj_p_blu.y + 40;
	}
	if(global.warp_r == 3){	// left
		
	}
	if(global.warp_r == 4){	// right
		
	}
}
	