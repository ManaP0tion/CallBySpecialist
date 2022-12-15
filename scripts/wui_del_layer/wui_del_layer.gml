///wui_del_layer(layer_name)
///@arg layer_name
///return id array
function wui_del_layer(argument0) {

	var _elements=ds_map_find_value(wui_layer,argument0);
	for (var i=0;i<array_length_1d(_elements);i++){
		with(_elements[i]){
			if (_surfp!=-1){
				x+=_surfp._x;
				y+=_surfp._y;
			}
			_wui_destroy_hierarchy_layer();
		}
		ds_list_delete(_elements[i].parent.list,ds_list_find_index(_elements[i].parent.list,_elements[i]));
	}


}
