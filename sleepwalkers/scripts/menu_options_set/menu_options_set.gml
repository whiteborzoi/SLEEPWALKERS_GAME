// Создайте пункты меню, такие как новая игра, загрузка, опции и выход.
// Использует строки для создания кнопок

///@param x
///@param y
///@param sep_width
///@param size
///@param options
function menu_options_set(){
	global.menu_options_x = argument0;
	global.menu_options_y = argument1;
	global.menu_options_sep = argument2;
	global.menu_options_size = argument3;
	for (var i = 4; i < argument_count; ++i){
		global.menu_options[i-4] = argument[i]
	}
}
