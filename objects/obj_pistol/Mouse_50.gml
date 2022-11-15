if(bullets>0) {
	if(delay<0) {
		instance_create_depth(x, y, -1, obj_pistol_bullet)
		delay = 20;
		bullets-=1
	}
}