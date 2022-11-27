if instance_exists(check) check.image_index = 0 check = noone
if !place_free( x, y-1)
{
  if place_meeting( x, y-1, obj_cube) or place_meeting( x, y-1, obj_player)
  {
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

