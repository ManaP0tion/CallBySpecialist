if(clear == true){
	image_speed = 1
	if(image_index == 8){
		image_speed = 0;
		if(place_meeting(x, y, obj_player))
			room_goto_next()
	}
}

else if(clear == false){
	image_speed = -1
	if(image_index == 0){
		image_speed = 0;
	}
}
