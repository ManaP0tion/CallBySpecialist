if (global.button_l_click == 1 or global.button_r_click == 1){
	activate = true
	count = 1
	instance_create_depth(x, y+30, -1,obj_cube)
	obj_cube.direction = (obj_cube_generator.y + 10)
	if(instance_exists(obj_cube)){
		instance_destroy(obj_cube)
		instance_create_depth(x, y+30, -1,obj_cube)
		obj_cube.direction = (obj_cube_generator.y + 10)
	}
}


