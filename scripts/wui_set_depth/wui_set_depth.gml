///wui_set_depth(depth)
///@arg depth
function wui_set_depth(argument0) {
	_depth=argument0;
	_depthchange=true;
	if (ds_list_find_value(system.depthlist,100+_depth)==undefined || ds_list_find_value(system.depthlist,100+_depth)==0){
		system.depthlist[|100+_depth]=ds_queue_create();
	}



}
