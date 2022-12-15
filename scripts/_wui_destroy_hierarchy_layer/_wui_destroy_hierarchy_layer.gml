///_wui_destroy_hierarchy_layer()
function _wui_destroy_hierarchy_layer() {
	if(list!=-1){
		while(!ds_list_empty(list)){
			with(list[|0]){
				_wui_destroy_hierarchy_layer();
			}
			ds_list_delete(list,0);
		}
	}



}
