if point_distance( x, y, obj_player.x, obj_player.y) < 24{
	image_index = 1
	global.button_r_click = 1
	audio_play_sound(snd_button_click, 1, 0)	
}