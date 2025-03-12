function textbox_letter(){
	
	//setup text letterinfo
	var letter_i = floor(letters) 
	text_current = string_copy(text[line],1,letter_i+1);
	letter_current = string_copy(text[line],letter_i+1,1)
	
	//letter create
	if letter_i != letter_last{
		if letter_i != " "{ 
			//
			letter_last = letter_i
			
			//create obj
			draw_set_font(font_char[letter_i])
			var lines = line_breaks[line][letter_i]
			if lines > line_last{line_last = lines str_ww = 0}
		
			var let = instance_create_depth(x-global.text_x+str_ww,
			y-global.text_y+(lines*global.text_sep),
			depth-1,obj_letter)
			
			//
			let.letter = letter_current
			let.letter_i = letter_i
			
			//col
			if (color_change_char[letter_i]){
				let.col_top = color_char_top[letter_i]
				let.col_bot = color_char_bot[letter_i]
			}else{
				let.col_top = font_color_top
				let.col_bot = font_color_bottom
			}
			//font
			let.font = font_char[letter_i]
			let.text_size = text_size
			//
			let.wavy = waving_char[letter_i]
			let.shaky = shaking_char[letter_i]
			let.outline_col = outline_col[letter_i]
			if global.hud_invisible{let.image_alpha = 0}
		}
		str_ww += (string_width(letter_current) * text_size)
	}
}
