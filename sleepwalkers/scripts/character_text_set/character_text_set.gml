// Устанавливает текстовые атрибуты персонажа, 
//для обычного текста и имени

///@param character 0
///@param color_top 1
///@param color_bot 2 
///@param name_col_top 3 
///@param name_col_bot 4
///@param font 5 
///@param size 6 
///@param name_font 7 
///@param name_size 8
function character_text_set(argument0, argument1, argument2, argument3 = argument1, argument4 = argument2, argument5 = global.font_text, argument6 = 1, argument7 = argument5, argument8 = argument6){
	var char = ds_map_find_value(global.characters, argument0)
	
	char.font_color_top = argument1
	char.font_color_bottom = argument2
	char.font = argument5
	char.text_size = argument6
	
	char.name_color_top = argument3
	char.name_color_bottom = argument4
	char.name_font = argument7
	char.name_size = argument8
}
