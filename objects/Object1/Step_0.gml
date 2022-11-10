x+= keyboard_check(ord("D")) - keyboard_check(ord("A"))

if (place_meeting(x,y+1,obj_floor)){
	if(keyboard_check(vk_space))
		vspeed = -5;
}
