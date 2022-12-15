if(clear == true){
	image_speed = 1
	if(image_index == 8){
		image_speed = 0;
	}
}

else if(clear == false){
	image_speed = -1
	if(image_index == 0){
		image_speed = 0;
	}
}
