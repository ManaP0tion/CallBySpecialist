///wui_draw_inherited()
function wui_draw_inherited() {
	if (list!=-1){
		for(var i=0;i<ds_list_size(list);i++){
			if (instance_exists(list[|i])){
				if (list[|i]._chk==0&&list[|i]._visible=1){
					with(list[|i]){
						event_perform(ev_draw,0);
					}
				}
			}
		}
	}



}
