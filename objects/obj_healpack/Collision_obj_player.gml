if(keyboard_check(ord("F"))) {
	audio_play_sound(snd_medkit, 1, 0)
	if(other.HP == 100 ){
		other.HP= 100;
		instance_destroy(self);
	}
	if(other.HP >= 50 && other.HP < 100){
		other.HP = 100;
		instance_destroy(self);
	}
	if(other.HP < 50){
		other.HP += 50;
		instance_destroy(self);
	}
}