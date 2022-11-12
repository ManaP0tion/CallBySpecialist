/// movement
var rkey = keyboard_check(ord("D"));
var lkey = keyboard_check(ord("A"));
var jkey = keyboard_check(vk_space);

//check for ground
if (place_meeting(x, y+1, obj_solid))
    {
    vspd = 0;
    //jumping
    if (jkey)
        {
        vspd = -jspd;
        }
    }
else
{
//gravity
if (vspd < 10)
    {
    vspd += grav;
    }
}
// moving right
if (rkey)
    {
    hspd = spd;
    }
// moving left
if (lkey)
    {
    hspd = -spd;
    }
// check if not moving
if ((!rkey && !lkey) || (rkey && lkey))
    {
    hspd = 0;
    }
// Horizontal collision
if (place_meeting(x+hspd, y, obj_solid))
    {
    while (!place_meeting(x+sign(hspd), y, obj_solid))
         {
         x += sign(hspd);
         }
    hspd = 0;
    }
//move horizontally
x += hspd;
// vertical collision
if (place_meeting(x, y+vspd, obj_solid))
    {
    while (!place_meeting(x, y+sign(vspd), obj_solid))
    y += sign(vspd);
    }
//move vertically
y += vspd;

//image direction
if(keyboard_check(ord("D")) - keyboard_check(ord("A")) != 0)
	image_xscale =  keyboard_check(ord("A")) - keyboard_check(ord("D")) 
	
//
if(global.pause == 1)
	exit