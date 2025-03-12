// Создает событие выбора, с таким количеством вариантов, какое вам нужно.
// Создает сопроводительное текстовое поле, чтобы задать вопрос или что-то еще

///@param choice_id
///@param name_id
///@param question
///@param choices

function choice_create(){
	global.choice_id = argument[0]
	
	var textbox = instance_create_depth(0,0,0,obj_textbox)
	textbox.max_lines = 1
	textbox.text[0] = argument[2]
	textbox.end_event = false
	
	textbox.name_id = argument[1]
	if argument[1] != ""{
		var obj = ds_map_find_value(global.characters, argument[1])
		textbox.font_color_top = obj.font_color_top
		textbox.font_color_bottom = obj.font_color_bottom
		textbox.name_color_top = obj.name_color_top
		textbox.name_color_bottom = obj.name_color_bottom
		textbox.speech = obj.speech
		textbox.font = obj.font
	}else{
		textbox.font_color_top = c_white
		textbox.font_color_bottom = c_ltgray
		textbox.speech = noone
	}
	
	
	var yy = room_height/4
	for (var i = 3; i < argument_count; i++){
		var choice = instance_create_depth(0,0,0,obj_choice)
		choice.text = argument[i]
		choice.num = i - 2
		choice.y = yy
		yy += 128
	}

	
}
