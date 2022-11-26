var portal_blu;

	
if(instance_exists(obj_p_blu)){
	instance_destroy(obj_p_blu)
	portal_blu=instance_create_layer(mouse_x, mouse_y, "Instances", obj_p_blu)
	portal_blu.direction=point_direction(x,y,mouse_x+camera_get_view_x(view_camera[0]),mouse_y+camera_get_view_y(view_camera[0]))
}
