// Устанавливает атрибуты всплывающего окна опций (отображается при сохранении)

///@param sprite
///@param x
///@param y
///@param question_y
///@param option_y
function popup_set(sprite, xx, yy, question_y, option_y){
	global.popup_sprite = sprite
	global.popup_x = xx
	global.popup_y = yy
	global.popup_questiony = question_y
	global.popup_optiony = option_y
}
