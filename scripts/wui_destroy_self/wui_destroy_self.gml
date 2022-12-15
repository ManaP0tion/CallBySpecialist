///wui_destroy_self()
function wui_destroy_self() {
	if (list!=-1){
		wui_destroy_hierarchy();
	}
	ds_list_delete(parent.list,ds_list_find_index(parent.list,id));
	instance_destroy();



}
