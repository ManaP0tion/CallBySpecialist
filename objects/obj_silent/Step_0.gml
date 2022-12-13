var _fail = Fail;
var _layerName = "Instances";

 if(global.silent > 50){
	global.silent = 50;

	layer_sequence_create(_layerName, 0, 0, _fail)
	show_debug_message("Fail")
}

