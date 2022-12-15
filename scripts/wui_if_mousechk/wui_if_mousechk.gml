///wui_if_mousechk();
function wui_if_mousechk() {
	for(var i=0;i<system.mousechk_count;i++){
		if (system.mousechk[i]==id)
			return true;
	}
	return false;


}
