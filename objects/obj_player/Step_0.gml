// player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Movement Calculate
var move = key_right - key_left;
hspd = move * spd;
vspd = vspd + grav

if(place_meeting(x, y=1, obj_solid) && (key_jump)){
     vspd = -8;
}

// Horizontal Collision
if(place_meeting(x+hspd, y, obj_solid))
{
    while(!place_meeting(x+sign(hspd), y, obj_solid))
    {
        x= x + sign(hspd)
    }
    hspd = 0;
}
x = x + hspd

// Vertical Collision
if(place_meeting(x, y+vspd, obj_solid))
{
    while(!place_meeting(x, y+sign(vspd), obj_solid))
    {
        y = y + sign(vspd)
    }
    vspd = 0;
}
y = y + vspd

//image direction
if(mouse_x>x)
	image_xscale = -1
if(mouse_x<x)
	image_xscale = 1
	
//
if(global.pause == 1)
	exit