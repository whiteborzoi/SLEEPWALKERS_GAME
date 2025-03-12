// Создает затухание

///@param fade_type
///@param speed
///@param color
///@param end_event
function fade_out(argument0, argument1, argument2, argument3){
	
	if !instance_exists(obj_fade){
		instance_destroy(obj_fade)
	}
	
	instance_create_depth(0,0,0,obj_fade) 
	obj_fade.fadeout_type = argument0
	obj_fade.spd = argument1
	obj_fade.col = argument2
	obj_fade.end_event = argument3
	
}
