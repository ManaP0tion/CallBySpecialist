///wui_update()
function wui_update() {
	var pos,i=0,index=id.list,aheight=0,__x=_x,__y=_y,tdepth=0,tt,_exit=0,xx=0,yy=0,tparent,__scalex=_scalex,__scaley=_scaley;//xx yy는 서피스 좌표 보정용
	pos[0]=0;
	x=_x;
	y=_y;
	for(var i=0;i<system.mousechk_count;i++){
		system.mousechk[i]=-1;
	}
	while(true){//list size는 list안의 개수를 뜻함.
		if(ds_list_size(list)==0) break;
		with(index[|pos[aheight]]){
			if (_chk==1) _chk=0;
			if(tdepth!=_depth&&_depthchange==false){
				_depth=tdepth;
			}
			if(aheight==0||(parent!=-1&&parent._depth!=_depth)){
				ds_queue_enqueue(system.depthlist[|100+_depth],id);//get and delete  - dequeue
				if ds_list_find_index(system.depthptr,100+_depth)==-1{
					system.depthptr[|++i]=100+_depth;
				}
			}
		
			if (_absolute==0){
				x=__x+(_x-_originx)*__scalex;
				y=__y+(_y-_originy)*__scaley;
				scalex=__scalex*_scalex;
				scaley=__scaley*_scaley;
			}
			else{
				x=_x-_originx;
				y=_y-_originy;
				scalex=_scalex;
				scaley=_scaley;
			}
		
			if(parent._surfp!=-1){
				_surfp=parent._surfp;
			}
			if (_surfp!=-1){
				xx=parent.x;
				yy=parent.y;
			}
			else{
				xx=0;
				yy=0;
			}
		
			width=_width*scalex;
			height=_height*scaley;
		
			if(_visible==1){
				for(var i=0;i<system.mousechk_count;i++){
					if(_precise==1){
						if (position_meeting(device_mouse_x(0)-xx,device_mouse_y(0)-yy,id)){
							if(system.mousechk[i]!=-1&&system.mousechk[i]._depth>=_depth){
								system.mousechk[i]=id;
							}
						}
					}
					else{
						if (point_in_rectangle(device_mouse_x(0)-xx,device_mouse_y(0)-yy,x,y,x+width,y+height)){
							if(system.mousechk[i]==-1||system.mousechk[i]._depth>=_depth){
								system.mousechk[i]=id;
							}
						}
					}
				}
			}
		
			if (list!=-1){
				pos[aheight]+=1;
				aheight+=1;
				pos[aheight]=0;
				index=list;
				tdepth=_depth;
				__x=x;
				__y=y;
				__scalex*=_scalex;
				__scaley*=_scaley;
			}
			else{
				pos[aheight]+=1;
				tparent=parent;
				while(ds_list_size(index)<=pos[aheight]){
					__x=tparent.parent.x;
					__y=tparent.parent.y;
					__scalex=tparent.parent._scalex;
					__scaley=tparent.parent._scaley;
					tdepth=tparent.parent._depth;
					aheight-=1;
					if(aheight<0){
						_exit=1;
						break;
					}
					else{
						index=tparent.parent.list;
						tparent=tparent.parent;
					}
				}
			}
		}
		if (_exit==1) break;
	}

	//ui_update는 x,y의 위치를 상위 노드에 따라 보정해주고, ui_draw에 쓸 depth 값들로 list를 나눠 레이어처럼 각각의 list에 index가 들어간다.



}
