///wui_destroy_hierarchy()
function wui_destroy_hierarchy() {
	if(list!=-1){
		while(!ds_list_empty(list)){
			with(list[|0]){
				wui_destroy_hierarchy();
			}
			instance_destroy(list[|0]);
			ds_list_delete(list,0);
		}
	}



}
