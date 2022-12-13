if(!reloading) {
	if(global.pistol_bullets<15) {
		audio_play_sound(snd_pistol_reload_start, 1, 0)
		alarm[0]=180
		reloading=true
	}
}