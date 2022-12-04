alarm[1]= room_speed * 2 // This just makes it check the rooms FPS and tells it to pause for 2 real seconds.

los = 600;//the line of sight of the turret, 300 pixels
rspeed = 5;//the speed at which the turret rotates
distance_to_player = 10000;//distance between the turret and player
active = false;//turret inactive at start
can_shoot = true;//disable shooting on start
ANG = 0;//set angle between player and turret to 0 on start
//set point of interest to the right hand side
xPointOfInterest = x + 1;
yPointOfInterest = y;
image_speed = 0;
image_index = 0;