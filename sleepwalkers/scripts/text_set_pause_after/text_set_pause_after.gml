// Устанавливает таймер паузы после заданной строки

function text_set_pause_after(substring, duration){
	for (var i = 0; i < argument_count; i += 2) {
		global.text_pause_substrings[global.text_pause_size] = argument[i]
		global.text_pause_duration[global.text_pause_size] = argument[i+1]
		global.text_pause_size ++
	}
	global.text_pause_substring_use = true
}

