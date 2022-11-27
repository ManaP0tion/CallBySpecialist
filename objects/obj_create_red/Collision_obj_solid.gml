image_alpha -= 0.02
	if (image_alpha <= 0)
		instance_destroy(self)
		
var portal_blu;

if(instance_exists(obj_p_red)){
	instance_destroy(obj_p_red)
	portal_blu=instance_create_layer(x, y, "Instances", obj_p_red)
	portal_blu.direction=point_direction(x,y,mouse_x+camera_get_view_x(view_camera[0]),mouse_y+camera_get_view_y(view_camera[0]))
}

else{
	portal_blu=instance_create_layer(x, y, "Instances", obj_p_red)
	portal_blu.direction=point_direction(x,y,mouse_x+camera_get_view_x(view_camera[0]),mouse_y+camera_get_view_y(view_camera[0]))
}
	
