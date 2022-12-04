// player input
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"));;
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_shift = keyboard_check(vk_shift);
spd_multi = key_shift ? 0.5 : 1.0
delay-=1

//Movement Calculate
var move = key_right - key_left;
hspd = move * spd * spd_multi;
vspd = vspd + grav

if(place_meeting(x, y+1, obj_blockset)) {
	if(key_jump){
     vspd = -5;
	}
}

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

//image direction
if(mouse_x>x)
	image_xscale = 1
if(mouse_x<x)
	image_xscale = -1

if(global.pause == 1)
	exit
	
// 캐릭터 모션	
if(move=0) {
	sprite_index=spr_char_idle
}
else if !(move=0) {
	if(key_shift=false) {
		sprite_index=spr_char_run
		running=true
	}
	else {
		sprite_index=spr_char_walk
		running=false
	}
}

// 사망
if(HP <=0 ){
	sprite_index = spr_char_death
	image_alpha -= 0.02
	if (image_alpha <= 0)
		instance_destroy(self)
}

seedir = point_direction(x, y, mouse_x, mouse_y);
global.shotdir = point_direction(x, y, mouse_x, mouse_y);

// 잡기기능
if keyboard_check_pressed( ord("G"))

  if (!Pick_cube && instance_exists(obj_cube))
  {
    var a;
    a = instance_nearest( x+lengthdir_x( 32, seedir+12*-image_x), y+lengthdir_y( 32, seedir+12*-image_x), obj_cube)
    if point_distance( x, y, a.x, a.y) < 48
    {
      Pick_cube = 1
      Pick = a
    }
  }
  
  else
  {
    Pick_cube = 0
 }
 
 
if( Pick_cube && instance_exists( Pick))
{
  Pick . sspeed = (x+lengthdir_x( 32, seedir+12*-image_x)-Pick.x)
  Pick . wspeed = (y+lengthdir_y( 32, seedir+12*-image_x)-Pick.y)
  if keyboard_check_pressed(ord("C"))  {Pick_cube = 0}
}
if !instance_exists( Pick) Pick_cube = 0
	
if(HP>100)
	HP=100

if(invin>0)
	invin-=1

/*/Stair
if(place_meeting(x,y + 1 ,obj_stairset)) and key_up
{
vsp = 0;
}

if(place_meeting(x,y + 1 ,obj_stairset)) and key_down
{
vsp =0;
}
