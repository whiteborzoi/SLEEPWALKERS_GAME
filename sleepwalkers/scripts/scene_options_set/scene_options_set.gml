// Создайте кнопки опций для игрового процесса, такие как сохранение, загрузка, автовоспроизведение, опции и выход.
// Использует строки для создания кнопок

///@param x
///@param y
///@param sep_width
///@param size
///@param options
function scene_options_set(){
	global.scene_options_x = argument0;
	global.scene_options_y = argument1;
	global.scene_options_sep = argument2;
	global.scene_options_size = argument3;
	for (var i = 4; i < argument_count; ++i) {
		global.scene_options[i-4] = argument[i]
	}
}
