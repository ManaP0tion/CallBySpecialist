///wui_destroy_node(id)
///@arg id
function wui_destroy_node(argument0) {
	with(argument0){
		wui_destroy_hierarchy();
	}
	ds_list_delete(argument0.parent.list,ds_list_find_index(argument0.parent.list,argument0));
	instance_destroy(argument0);



}
