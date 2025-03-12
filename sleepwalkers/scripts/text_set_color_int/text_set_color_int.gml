// Установите цвет для (нескольких) участков текста, используя подстроки
// (работает с текстовыми полями, содержащими только одну строку)
	
// arg 0: позиция первой буквы раздела
// arg 1: позиция последней буквы раздела
// arg 2: верхний цвет строки
// arg 3: цвет нижней части строки
// args...
		
function text_set_color_int(pos_first,pos_last,color_top,color_bot){
	
	for (var i = 0; i < argument_count; i += 4) {
		global.text_color_first[global.text_color_size] = argument[i]
		global.text_color_last[global.text_color_size] = argument[i+1]
		global.text_color_top[global.text_color_size] = argument[i+2]
		global.text_color_bot[global.text_color_size] = argument[i+3]
		global.text_color_size ++
	}
	
}
