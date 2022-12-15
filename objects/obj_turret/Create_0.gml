HP = 50
HP_MAX = 50
los = 100;
distance_to_player = 10000
active = false
pointdir = 0
image_speed = 0;
image_index = 0;
alarm[1]= room_speed * 2


var shot = instance_create_layer(x, y, "Instances", obj_turret_bullet)
shot.speed = 20
shot.direction = pointdir


/*HP = 25
image_speed = 0;
image_index = 0;
active = false
shot = false
range = 0.001
image_speed = 0;
image_index = 0;


alarm[1]= room_speed * 2 // This just makes it check the rooms FPS and tells it to pause for 2 real seconds.

los = 10;//the line of sight of the turret, 300 pixels

distance_to_player = 100;//distance between the turret and player
active = false;//turret inactive at start
can_shoot = true;//disable shooting on start
ANG = 0;//set angle between player and turret to 0 on start
//set point of interest to the right hand side
xPointOfInterest = x + 1;
yPointOfInterest = y;
