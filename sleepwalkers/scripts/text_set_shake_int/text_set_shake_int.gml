// Установите дрожание для (нескольких) участков текста, используя int-позицию строки
// (работает только для первой строки текстового поля)
// arg 0: начальная позиция дрожащей строки 1
// arg 1: конечная позиция дрожащей строки 1
// args...

function text_set_shake_int(pos_first,pos_last){

	for (var i = 0; i < argument_count; i += 2) {
		global.text_shake_first[global.text_shake_size] = argument[i]
		global.text_shake_last[global.text_shake_size] = argument[i+1]
		global.text_shake_size ++
	}
}
