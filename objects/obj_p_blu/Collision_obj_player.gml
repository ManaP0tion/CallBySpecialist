

if(global.red_portal_count == 1 && keyboard_check_pressed(ord("W") )){
	if(global.warp_r == 1){	// up
		obj_player.x = obj_p_red.x
		obj_player.y = obj_p_red.y - 100
	}
	if(global.warp_r == 2){	// down
		obj_player.x = obj_p_red.x
		obj_player.y = obj_p_red.y + 100
	}
	if(global.warp_r == 3){	// left
		obj_player.x = obj_p_red.x - 10
		obj_player.y = obj_p_red.y;
	}
	if(global.warp_r == 4){	// right
		obj_player.x = obj_p_red.x + 10
		obj_player.y = obj_p_red.y;
	}
	else{	// 테스트하려고 만들었음
		obj_player.x = obj_p_red.x
		obj_player.y = obj_p_red.y;
	}
}
if(global.red_portal_count == 0 && keyboard_check_pressed(ord("W") )){
	if(global.warp_r == 1){	// up
		obj_player.x = obj_p_red.x 
		obj_player.y = obj_p_red.y - 100 
	}
	if(global.warp_r == 2){	// down
		obj_player.x = obj_p_red.x
		obj_player.y = obj_p_red.y  + 100
	}
	if(global.warp_r == 3){	// left
		obj_player.x = obj_p_red.x - 10
		obj_player.y = obj_p_red.y;
	}
	if(global.warp_r == 4){	// right
		obj_player.x = obj_p_red.x + 10
		obj_player.y = obj_p_red.y;
	}
	if(global.warp_r == 0){	// 테스트하려고 만들었음
		obj_player.x = obj_p_red.x
		obj_player.y = obj_p_red.y;
	}
}
	

