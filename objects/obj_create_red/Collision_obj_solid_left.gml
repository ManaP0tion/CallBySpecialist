image_alpha -= 0.02
	if (image_alpha <= 0)
		instance_destroy(self)
		
		
global.warp_r = 3;

		
var portal_red;

if(instance_exists(obj_p_red)){
	instance_destroy(obj_p_red)
	portal_red=instance_create_layer(x, y, "Instances", obj_p_red)
	portal_red.direction=point_direction(x,y,mouse_x+camera_get_view_x(view_camera[0]),mouse_y+camera_get_view_y(view_camera[0]))
}

else{
	portal_red=instance_create_layer(x, y, "Instances", obj_p_red)
	portal_red.direction=point_direction(x,y,mouse_x+camera_get_view_x(view_camera[0]),mouse_y+camera_get_view_y(view_camera[0]))
}
	
	
