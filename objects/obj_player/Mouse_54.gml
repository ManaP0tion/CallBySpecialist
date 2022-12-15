if(knife_delay=0)&&!(knifing)&&(place_meeting(x, y+1, obj_blockset)) {
	audio_play_sound(snd_knife, 1, 0)
	alarm_set(1, 5)
	knife_delay=66
}
