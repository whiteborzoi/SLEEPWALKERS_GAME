// Устанавливает таймер паузы в заданной 
//целочисленной позиции на заданную продолжительность
function text_set_pause_int(pos, duration){
	for (var i = 0; i < argument_count; i += 2) {
		global.text_pause_int[global.text_pause_size] = argument[i]
		global.text_pause_duration[global.text_pause_size] = argument[i+1]
		global.text_pause_size ++
	}
}
