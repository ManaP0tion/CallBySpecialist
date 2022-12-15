///wui_draw()
function wui_draw() {
	ds_list_sort(depthptr,false);
	for(var i=0;i<ds_list_size(depthptr);i++){
		while(!ds_queue_empty(depthlist[|depthptr[|i]])){
			inst=ds_queue_dequeue(depthlist[|depthptr[|i]]);
		
			if (instance_exists(inst)){
				if(inst._chk==0 && inst._visible==1){
					with(inst){
						event_perform(ev_draw,0);//callback 기능도 만들기
					}
				}
			}
		}
		ds_queue_clear(depthlist[|depthptr[|i]]);
	}




}
