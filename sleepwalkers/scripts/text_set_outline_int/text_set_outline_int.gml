// Установите цвет контура для (нескольких) участков текста, используя подстроки
// (работает с текстовыми полями, содержащими только одну строку)
// arg 0: позиция первой буквы раздела
// arg 1: позиция последней буквы раздела
// arg 2: шрифт раздела
// args...

function text_set_outline_int(pos_first,pos_last,color){
		
	for (var i = 0; i < argument_count; i += 3){
		global.text_outline_first[global.text_outline_size] = argument[i]
		global.text_outline_last[global.text_outline_size] = argument[i+1]
		global.text_outline_color[global.text_outline_size] = argument[i+2]
		global.text_outline_size ++
	}
}
