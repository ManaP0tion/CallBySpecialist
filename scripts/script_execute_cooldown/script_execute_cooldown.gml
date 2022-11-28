/***********************************************************
    Super simple cooldown-execute script by Jaehyeop Lee    
***********************************************************/


/* If some method's index is as key in this struct, 
the method is not executable, when the get_timer() at that time 
is less than the one in the struct.
In other words, in the struct, key means the index of a method, 
and value means like the time that a method to be available again. */
globalvar method_limit_until;
method_limit_until = {};

function script_execute_cooldown(miliseconds,callback){
	var microseconds = miliseconds*1000; // Convert miliseconds to microseconds.
	var method_index = string(method_get_index(callback)); // The (unique)index of the callback method -> (unique)key

	if (get_timer() < method_limit_until[$ method_index] ?? 0) exit; // Do not execute if it's now cooldown.
	callback(); // Else, execute the callback method.
	method_limit_until[$ method_index] = get_timer() + microseconds; // And set its cooldown as the steps.
}