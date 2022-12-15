other.HP -= 25
instance_destroy(self)
instance_create_layer(x,y,"Instances",obj_flash)
show_debug_message("hit")