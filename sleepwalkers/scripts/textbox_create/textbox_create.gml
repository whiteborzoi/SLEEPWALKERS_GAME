// Создайте текстовое поле с текстом, основанным на атрибутах текста данного персонажа.
// Неограниченное количество строк, но текстовые эффекты работают только на строке 1

///@param name_id
///@param strings
function textbox_create(){
	var textbox = instance_create_depth(0,0,0,obj_textbox)
	textbox.max_lines = argument_count-2
	textbox.end_event = true

	for (var i = 1; i < argument_count; i++){
	    textbox.text[i-1] = argument[i]
	}

	textbox.name_id = argument[0]
	if argument[0] != ""{
		var obj = ds_map_find_value(global.characters, argument[0])
		if (obj == undefined){
			show_message("ERROR: no character with the name id '"+string(argument[0])+"' exists!")	
			game_end()
		}else{
			textbox.font_color_top = obj.font_color_top
			textbox.font_color_bottom = obj.font_color_bottom
			textbox.font = obj.font
			textbox.text_size = obj.text_size
			textbox.name_color_top = obj.name_color_top
			textbox.name_color_bottom = obj.name_color_bottom
			textbox.name_font = obj.name_font
			textbox.name_size = obj.name_size
			textbox.speech = obj.speech
		}
	}else{
		textbox.font_color_top = c_white
		textbox.font_color_bottom = c_ltgray
		textbox.speech = noone
	}

}
