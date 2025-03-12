// Задайте волнистость для (нескольких) участков текста, используя подстроки
// arg 0: строка текста, который нужно сделать волнистым
// args...

function text_set_wave(substring){
	for (var i = 0; i < argument_count; i += 1) {
		global.text_wave_substrings[global.text_wave_size] = argument[i]
		global.text_wave_size ++
	}
	global.text_wave_substring_use = true
}
