///wui_get_all(layer_name)
///@arg layer_name
///return id array
function wui_get_all(argument0) {

	return ds_map_find_value(wui_layer,argument0);


}
