/* Перемещает персонажа с помощью обратного экспоненциального (переменного)
движения (скорость начинается быстро, затем становится медленной)*/
///@param name
///@param x
///@param y
///@param movespeed
///@param end_event
function character_move_exp(argument0, argument1, argument2, argument3, argument4){

	var char = ds_map_find_value(global.characters, argument0)
	char.xto = argument1
	char.yto = argument2
	char.end_event_move = argument4
	char.move_type = move_exp
	
	// move exp speed
	char.move_speed = argument3
	
}
