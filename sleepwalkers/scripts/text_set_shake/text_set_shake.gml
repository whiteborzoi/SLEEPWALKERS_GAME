// Установите дрожание для (нескольких) участков текста, используя подстроки
// (работает только для первой строки текстового поля)
// arg 0: строка текста, который нужно сделать шатким
// args...

function text_set_shake(substring){
	for (var i = 0; i < argument_count; i += 1) {
		global.text_shake_substrings[global.text_shake_size] = argument[i]
		global.text_shake_size ++
	}
	global.text_shake_substring_use = true
}
