if !instance_exists(obj_player) exit;

if(combine_delay>0)
	combine_delay-=1
	
// Horizontal Collision
if(place_meeting(x+hspd, y, obj_blockset))
{
    while(!place_meeting(x+sign(hspd), y, obj_blockset))
    {
        x= x + sign(hspd)
    }
    hspd = 0;
}
if(place_meeting(x+hspd, y, obj_combine))
{
    while(!place_meeting(x+sign(hspd), y, obj_combine))
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

//달리기 인식
if (distance_to_object(obj_player)<192) {
	if(obj_player.running=true)
		recog=true
}

//총 인식
if (distance_to_object(obj_player)<192) {
	if(obj_player.shooting=true)
		recog=true
}

//시야 인식
if (image_xscale=1&&(obj_player.x>x-256)&&obj_player.x<x)or(image_xscale=-1&&(obj_player.x<x+256)&&obj_player.x>x) {
	recog=true
}

//달리기 의심
if (distance_to_object(obj_player)<256) {
	if(obj_player.running=true)
		doubt=true
}

//시야 의심
else if (image_xscale=1&&(obj_player.x>x-320)&&obj_player.x<x)or(image_xscale=-1&&(obj_player.x<x+320)&&obj_player.x>x) {
	doubt=true
}
else
	doubt=false
	
//인식 행동
if (recog=true) {
	if(obj_player.x<x)
		image_xscale = 1
	if(obj_player.x>x)
		image_xscale = -1
	if(distance_to_object(obj_player)<100) {
		mtp=false
	}
	else
		mtp=true
	doubt=false
}

//플레이어 추적
if(mtp=true) {
	move_towards_point(obj_player.x, y, 2)
	if(obj_player.x=x)||!(place_meeting(x-20,y+22,obj_solid))||!(place_meeting(x+20, y+22,obj_solid))
		speed=0
	else if(place_meeting(x-image_xscale, y, obj_combine))
		speed=0
}
else
	speed=0

//공격
if(recog=true) {
	if(distance_to_object(obj_player)<160) {
		if(combine_delay=0) {
			instance_create_depth(x, y, -1, obj_combine_bullet)
			combine_delay=90
			draw_text(x,y,"t")
		}
	}
}