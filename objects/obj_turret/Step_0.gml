if !instance_exists(obj_player) exit;

distance_to_player = distance_to_object(obj_player);
pointdir = point_direction(x, y, obj_player.x, obj_player.y)

if(distance_to_player <= los) && !collision_line(x,y,obj_player.x,obj_player.y, obj_blockset,false,true){
	active = true
	audio_play_sound(snd_detact, 3, 0)
	obj_player.HP -= 1
}
else{
	active = false
}

if(HP <= 0){
	instance_destroy(self)
}

var _health;
_health = (HP / HP_MAX) * 100;

draw_healthbar(x-10, y-30, x+10, y-25, _health, c_black, c_red, c_lime, 0, true, true)



