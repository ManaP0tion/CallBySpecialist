///wui_callback_func(function,[arg0])
///@arg function
///@arg arg0
function wui_callback_func() {
	with(system){
		callback=other.id;
		if argument_count==1{
			script_execute(argument[0]);
		}
		else{
			script_execute(argument[0],argument[1]);
		}
	}


}
