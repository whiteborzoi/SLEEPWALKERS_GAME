// Установите шрифт для (нескольких) участков текста, используя подстроки
// (работает с текстовыми полями, содержащими только одну строку)
// arg 0: шрифт текста, цвет которого нужно изменить
// arg 1: шрифт строки

function text_set_font(substring,font){
	
	for (var i = 0; i < argument_count; i += 2) {
		global.text_font_substrings[global.text_font_size] = argument[i]
		global.text_font_id[global.text_font_size] = argument[i+1]
		global.text_font_size ++
	}
	global.text_font_substring_use = true
}
