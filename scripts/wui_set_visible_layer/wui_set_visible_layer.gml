///wui_set_visible_layer(layer_name,visible)
///@arg layer_name
///@arg visible [bool]
function wui_set_visible_layer(argument0, argument1) {

	var _layer=ds_map_find_value(wui_layer,argument0);
	for(var i=0;i<array_length_1d(_layer);i++){
		if (instance_exists(_layer[i])){
			_layer[i]._visible=argument1;
		}
	}


}
