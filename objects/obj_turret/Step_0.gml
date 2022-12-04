distance_to_player = sqrt(sqr(x - obj_player.x) + sqr(y - obj_player.y));//update the distance to player

player_width = sprite_get_width(obj_player.sprite_index);
player_height = sprite_get_height(obj_player.sprite_index);
player_average_size = (player_width + player_height)/2;

if (distance_to_player <= los) && !collision_line(x,y,obj_player.x,obj_player.y, obj_blockset,false,true)
{
xPointOfInterest = obj_player.x;//update x point of interest with player's x coordinate
yPointOfInterest = obj_player.y;//update y point of interest with player's y coordinate

active = true;//become active
}
else//otherwise
{
active = true;//deactivate
}

ANG = point_direction(x, y, obj_player.x, obj_player.y) - image_angle;

if (ANG >= 360)//if the angle ever goes over 360
{
ANG = ANG mod 360;//minus 360 from it. 361 degrees becomes 1 degree, 400 becomes 40, etc
}

if (active == true)//if active
{
if (ANG < (player_average_size/4) || ANG > (360 - player_average_size/4))//work out if the player is is an acceptable angle away from the turret's gun on either side of its direction
{
can_shoot = true;//enable shooting
}
else//otherwise
{
can_shoot = true;//continue to deactivate shooting
}
}

//pointdir = point_direction(x, y, xPointOfInterest, yPointOfInterest);//find the last known direction to the player




if (!instance_exists(obj_player)) exit;

var nearest;
nearest=instance_nearest(x,y,obj_player);
direction=point_direction(x,y,nearest.x,nearest.y);


