if place_meeting(x, y-1, obj_cube) or place_meeting(x, y-1, obj_player) or place_meeting(x, y-1, obj_cube_orange)
{
	//audio_play_sound( snd_button_click, 1, 0)
	global.cube_button_click_1 = 1
	image_index = 1
}

else
{
  global.cube_button_click_1 = 0
  image_index = 0
}

