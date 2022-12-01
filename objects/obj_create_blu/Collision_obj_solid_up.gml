image_alpha -= 0.02
	if (image_alpha <= 0)
		instance_destroy(self)
		
		
global.warp_b = 1;

		
var portal_blu;

if(instance_exists(obj_p_blu)){
	instance_destroy(obj_p_blu)
	portal_blu=instance_create_layer(x, y-13, "Instances", obj_p_blu)
	portal_blu.direction=point_direction(x,y,mouse_x+camera_get_view_x(view_camera[0]),mouse_y+camera_get_view_y(view_camera[0]))
	//portal_blu.image_angle = 90
}

else{
	portal_blu=instance_create_layer(x, y-13, "Instances", obj_p_blu)
	portal_blu.direction=point_direction(x,y,mouse_x+camera_get_view_x(view_camera[0]),mouse_y+camera_get_view_y(view_camera[0]))
	//portal_blu.image_angle = 90
}
	
