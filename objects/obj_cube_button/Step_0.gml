if instance_exists( a) a . image_index = 0 a = noone
if !place_free( x, y)
{
  if place_meeting( x, y, obj_cube) or place_meeting( x, y, obj_player)
  {
    if !c audio_play_sound( snd_button_click, 1, 0)
    c = 1
    image_index = 1
    click = 1
    if place_meeting( x, y, obj_cube)
    {
      a = instance_nearest( x, y, obj_cube)
      a . image_index = 1
    }
  }
}
else
{
  c = 0
  click = 0
  image_index = 0
}


/*
if instance_exists(check) check.image_index = 0 check = noone
if !place_free( x, y-1)
{
  if place_meeting( x, y-1, obj_cube) or place_meeting( x, y-1, obj_player)
  {
    if !c audio_play_sound(snd_button_click, 1, 0)
    c = 1
    image_index = 1
    click = 1
    if place_meeting( x, y-1, obj_cube)
    {
      check = instance_nearest( x, y, obj_cube)
      check.image_index = 1
    }
  }
}
else
{
  c = 0
  click = 0
  image_index = 0
}
