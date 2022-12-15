///wui_add_layer(layer_name,[absolute],[precise]) : return node_id array
///@arg layer_name
///@arg [absolute]
///@arg [precise]
function wui_add_layer() {

	var _elements=ds_map_find_value(wui_layer,argument[0]);

	for (var i=0;i<array_length_1d(_elements);i++){
		ds_list_add(list,_elements[i]);
		with(_elements[i]){
			system=other.system;
			parent=other.id;
			list=-1;
			_x=x;
			_y=y;
			width=32;
			height=32;
			_width=sprite_width;
			_height=sprite_height;
			_absolute=0;
			_precise=0;
			if(argument_count>=3)
				_absolute_pos=argument[2];
			if(argument_count>=4)
				_precise=argument[3];
			_depth=other._depth;
			_depthchange=false;
			_surfp=-1;
			_visible=1;
	
			_chk=1;
			_originx=0;
			_originy=0;
			scalex=1;
			scaley=1;
			_scalex=1;
			_scaley=1;
		}
	}

	return _elements;


}
