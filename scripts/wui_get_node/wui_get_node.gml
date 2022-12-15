///wui_get_node(layer_name,object_index,[index])
///@arg layer_name
///@arg object_index
///@arg [index] : default 0
///ex) button1=wui_get("Wui_GUI",ui_button) or button2=wui_get("Wui_GUI",ui_button,1)
///return id / -1 is error. (didn't find)
function wui_get_node() {

	var _layer=ds_map_find_value(wui_layer,argument[0]), count=0, maxcount=0;
	if (argument_count==3){
		maxcount=argument[2];
	}
	for (var i=0; i<array_length_1d(_layer); i++){
		if (_layer[i].object_index==argument[1]){
			if (count!=maxcount){
				count++;
			}
			else{
				return _layer[i];
			}
		}
	}
	return -1;


}
