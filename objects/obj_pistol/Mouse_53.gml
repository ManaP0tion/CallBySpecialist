if(global.pistol_bullets>0) {
	if(!reloading) {
		if(delay<0) {
			instance_create_depth(x, y, -1, obj_pistol_bullet)
			delay = 10;
			global.pistol_bullets-=1
		}
	}
}