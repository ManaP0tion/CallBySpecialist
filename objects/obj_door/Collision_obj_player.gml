if(clear == true && image_index == 8 && keyboard_check_pressed(ord("W") )){
	audio_play_sound(snd_doorin, 1, 0)
	room_goto_next()
}