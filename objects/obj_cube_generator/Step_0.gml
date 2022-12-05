if (global.buttonleft_click == 1){
	activate = true
	count = 1
	instance_create_depth(x, y, -1,obj_cube)
	direction = (obj_cube_generator.y + 10)
}

if(count = 1 && global.buttonleft_click == 1){
	instance_destroy(obj_cube)
}
