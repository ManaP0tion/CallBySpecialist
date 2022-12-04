aaa=instance_create_layer(x,y, "Instances",obj_turret_bullet);
aaa.direction=direction;
aaa.speed=5;
alarm[1]= room_speed * 2 // This just makes it check the rooms FPS and tells it to pause for 2 real seconds.
