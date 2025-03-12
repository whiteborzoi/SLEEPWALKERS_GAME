// Мигает экран, то появляется, то исчезает 

///@param color
///@param speed
///@param end_event
function flash_screen(argument0,argument1,argument2){
	var flash = instance_create_depth(0,0,0,obj_flash)
	flash.col = argument0
	flash.spd = argument1
	flash.end_event = argument2
}