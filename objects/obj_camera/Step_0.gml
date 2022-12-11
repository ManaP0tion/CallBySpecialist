if instance_exists( obj_player)
{
  seedir = point_direction( x, y, obj_player.x, obj_player.y)
}

if(HP <= 0){
	instance_destroy(self)
}