if(keyboard_check(ord("F"))) {
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