// Changes the backdrop sprite

///@param sprite
///@param stretch
function backdrop_set(argument0,argument1 = false){
	
	if !instance_exists(obj_backdrop){
		instance_create_depth(0,0,99,obj_backdrop)	
	}
	obj_backdrop.sprite_index = argument0
	obj_backdrop.alarm[0] = 1
	global.backdrop_stretch = argument1
	global.backdrop = argument0
}
