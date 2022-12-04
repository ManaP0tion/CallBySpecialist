if(global.pistol_bullets>0) {
	if(!reloading) {
		if(delay<0) {
			instance_create_depth(x, y, -1, obj_pistol_bullet)
			sprite_index = spr_char_shoot
			delay = 20;
			global.pistol_bullets-=1
		}
	}
}