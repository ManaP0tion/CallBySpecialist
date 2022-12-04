if !instance_exists(obj_player) exit;

// Horizontal Collision
if(place_meeting(x+hspd, y, obj_blockset))
{
    while(!place_meeting(x+sign(hspd), y, obj_blockset))
    {
        x= x + sign(hspd)
    }
    hspd = 0;
}
x = x + hspd

// Vertical Collision
if(place_meeting(x, y+vspd, obj_blockset))
{
    while(!place_meeting(x, y+sign(vspd), obj_blockset))
    {
        y = y + sign(vspd)
    }
    vspd = 0;
}
y = y + vspd

vspd = vspd + grav

//플레이어 인식
if (distance_to_object(obj_player)<200) {
	if(obj_player.running=true)
		recog=true
}

/*if (image_xscale=1&&(obj_player.x>x-250))||(image_xscale=-1&&(obj_player.x<x+250)) {
	recog=true
}*/

if (recog=true) {
	mtp=true
	if(obj_player.x<x)
		image_xscale = 1
	if(obj_player.x>x)
		image_xscale = -1
	if(distance_to_object(obj_player)<50) {
		mtp=false
	}
}

//플레이어 추적
if(mtp=true) {
	move_towards_point(obj_player.x, y, 2)
	if(obj_player.x=x)
		speed=0
}
else
	speed=0