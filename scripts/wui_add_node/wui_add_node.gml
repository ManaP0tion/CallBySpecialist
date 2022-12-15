///wui_add_node(obj,[absolute],[precise]) : return node_id
///@arg obj
///@arg [absolute]
///@arg [precise]
function wui_add_node() {
	var inst=instance_create_layer(0,0,layer,argument[0]);
	if(list==-1)
		list=ds_list_create();
	ds_list_add(list,inst);
	with(inst){
		system=other.system;
		parent=other.id;
		list=-1;
		_x=0;
		_y=0;
		width=32;
		height=32;
		_width=32;
		_height=32;
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
	return inst;



}
