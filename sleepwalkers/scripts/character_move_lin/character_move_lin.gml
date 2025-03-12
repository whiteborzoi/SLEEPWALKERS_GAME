// перемещение персонажа с постоянной скоростью

///@param name
///@param x
///@param y
///@param seconds
///@param end_event
function character_move_lin(argument0, argument1, argument2, argument3, argument4){

	var char = ds_map_find_value(global.characters, argument0)
	char.xto = argument1
	char.yto = argument2
	char.end_event_move = argument4
	char.move_type = move_lin
	

	// move lin speed
	var xdif = abs(char.xto - char.x)
	var ydif = abs(char.yto - char.y)
	if xdif > ydif{
		char.move_speed  = xdif/(argument3*room_speed)	
	}else{
		char.move_speed  = ydif/(argument3*room_speed)	
	}
		
}
