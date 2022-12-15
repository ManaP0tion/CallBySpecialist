if(global.blu_portal_count == 1 && keyboard_check_pressed(ord("W") )){
	if(global.warp_b == 1){	// up
		obj_player.x = obj_p_blu.x 
		obj_player.y = obj_p_blu.y
	}
	else if(global.warp_b == 2){	// down
		obj_player.x = obj_p_blu.x
		obj_player.y = obj_p_blu.y
	}
	else if(global.warp_b == 3){	// left
		obj_player.x = obj_p_blu.x - 10
		obj_player.y = obj_p_blu.y
	}
	else if(global.warp_b == 4){	// right
		obj_player.x = obj_p_blu.x + 10
		obj_player.y = obj_p_blu.y
	}
	
	/*else{	//기능테스트용임
		obj_player.x = obj_p_blu.x-10
		obj_player.y = obj_p_blu.y
	}*/
}
if(global.blu_portal_count == 0 && keyboard_check_pressed(ord("W") )){
	if(global.warp_b == 1){	// up
		obj_player.x = obj_p_blu.x
		obj_player.y = obj_p_blu.y
	}
	else if(global.warp_b == 2){	// down
		obj_player.x = obj_p_blu.x
		obj_player.y = obj_p_blu.y
	}
	else if(global.warp_b == 3){	// left
		obj_player.x = obj_p_blu.x - 10
		obj_player.y = obj_p_blu.y
	}
	else if(global.warp_b == 4){	// right
		obj_player.x = obj_p_blu.x + 10
		obj_player.y = obj_p_blu.y
	}
	
	/*if(global.warp_b == 0){
		obj_player.x = obj_p_blu.x-10
		obj_player.y = obj_p_blu.y
	}*/
}