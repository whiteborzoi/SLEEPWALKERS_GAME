// Устанавливает спрайт окна выбора, 
// и ширину перед переносом строки

function choice_set(sprite, break_width = sprite_get_width(sprite)){
	
	global.choice_sprite = sprite
	global.choice_width = break_width
	
}
