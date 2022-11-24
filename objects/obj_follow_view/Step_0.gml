if(mouse_check_button(ev_right_button)) {
	if(instance_exists(obj_player)) {
		x=obj_player.x
		y=obj_player.y
	
		var cam=view_camera[0]
		var xpos=(obj_player.x+((mouse_x-obj_player.x)/2))-camera_get_view_width(cam)/2
		var ypos=(obj_player.y+((mouse_y-obj_player.y)/2))-camera_get_view_height(cam)/2
		camera_set_view_pos(cam, xpos, ypos)
	
		obj_player.direction=point_direction(x,y,mouse_x,mouse_y)
	}
}