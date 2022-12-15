if(distance_to_object(obj_player)<64)
    timer-=1

if(timer<0) {
    instance_destroy(self)
}

if(HP<=0){
    instance_destroy(self)
}