///wui_create(width,height,touch_limit) : return list / set value
///@arg width
///@arg height
///@arg multitouch_limit (recmd: 1~2)
function wui_create(argument0, argument1, argument2) {
	var _li=ds_list_create();
	system=id;
	parent=-1;
	list=_li;
	_x=0;
	_y=0;
	width=argument0;//calculated *scale
	height=argument1;
	_width=argument0;
	_height=argument1;
	_absolute=0;
	_precise=0;
	_depth=0;
	_depthchange=false;
	_surfp=-1;
	_visible=1;
	_originx=0;
	_originy=0;
	scalex=1;//calculated
	scaley=1;
	_scalex=1;
	_scaley=1;

	depthlist=ds_list_create();
	depthlist[|100]=ds_queue_create();
	depthptr=ds_list_create();
	depthptr[|0]=100;

	mousechk_count=argument2;
	mousechk=array_create(argument2,-1);
	callback=-1;

	_chk=1;

	var _layer=layer_get_all(),_elements;
	wui_layer=ds_map_create();

	for (var i=0;i<array_length_1d(_layer);i++){
		if (string_pos("Wui_",layer_get_name(_layer[i]))==1){
			layer_set_visible(_layer[i],false);
			_elements=layer_get_all_elements(_layer[i]);
			for (var j=0;j<array_length_1d(_elements);j++){
				_elements[j]=layer_instance_get_instance(_elements[j]);
			}
			ds_map_add(wui_layer,layer_get_name(_layer[i]),_elements);
		}
	}

	return _li;



}
