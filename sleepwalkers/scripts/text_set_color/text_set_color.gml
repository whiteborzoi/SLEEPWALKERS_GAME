// Установите цвет для (нескольких) участков текста, используя подстроки
// (работает с текстовыми полями, содержащими только одну строку)

// arg 0: строка текста для изменения цвета
// arg 1: верхний цвет строки
// arg 2: цвет нижней части строки
// args...

function text_set_color(substring,color_top,color_bot){

	for (var i = 0; i < argument_count; i += 3) {
		global.text_color_substrings[global.text_color_size] = argument[i]
		global.text_color_top[global.text_color_size] = argument[i+1]
		global.text_color_bot[global.text_color_size] = argument[i+2]
		global.text_color_size ++
	}
	global.text_color_substring_use = true
}
