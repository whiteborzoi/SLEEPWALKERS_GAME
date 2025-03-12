// Затухание

///@param fade_type
///@param speed
///@param end_event
function fade_in(argument0, argument1, argument2){
	
	if !instance_exists(obj_fade){
		instance_create_depth(0,0,0,obj_fade)
		obj_fade.alpha = 1
		obj_fade.appeared = true
	}
	
	obj_fade.fadein_type = argument0
	obj_fade.spd = argument1
	obj_fade.end_event = argument2
	obj_fade.xx = global.game_width+2
}

