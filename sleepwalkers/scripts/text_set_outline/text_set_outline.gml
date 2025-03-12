// Установить контур для (нескольких) участков текста, используя подстроки
// (работает с текстовыми полями, содержащими только одну строку)
// arg 0: шрифт текста, цвет которого нужно изменить
// arg 1: шрифт строки

function text_set_outline(substring,color){
	
	for (var i = 0; i < argument_count; i += 2) {
		global.text_outline_substrings[global.text_outline_size] = argument[i]
		global.text_outline_color[global.text_outline_size] = argument[i+1]
		global.text_outline_size ++
	}
	global.text_outline_substring_use = true
}
