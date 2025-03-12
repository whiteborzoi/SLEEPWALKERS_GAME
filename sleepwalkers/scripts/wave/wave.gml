//	wave() by unknown author
///@param value1
///@param value2
///@param duration
///@param offset
function wave(argument0, argument1, argument2, argument3) {
	a4 = (argument1 - argument0) * 0.5;
	return argument0 + a4 + sin(((((current_time+argument3) * 0.001) + argument2) / argument2) * (pi*2)) * a4;
}
