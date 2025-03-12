///@desc Init
// ------------------ Effects Setup --------------------------------------------------------

//find int values of where to start and finish effects
if global.text_wave_substring_use = true{
	for (var i = 0; i < global.text_wave_size; ++i){
		var str = string_lower(global.text_wave_substrings[i])
		global.text_wave_first[i] = string_pos(str,string_lower(text[0])) - 1
		global.text_wave_last[i] = string_pos(str,string_lower(text[0])) + string_length(str) - 2
	}
}
if global.text_shake_substring_use = true{
	for (var i = 0; i < global.text_shake_size; ++i){
		var str = string_lower(global.text_shake_substrings[i])
		global.text_shake_first[i] = string_pos(str,string_lower(text[0])) - 1
		global.text_shake_last[i] = string_pos(str,string_lower(text[0])) + string_length(str) - 2
	}
}
if global.text_color_substring_use = true{
	for (var i = 0; i < global.text_color_size; ++i){
		var str = string_lower(global.text_color_substrings[i])
		global.text_color_first[i] = string_pos(str,string_lower(text[0])) - 1
		global.text_color_last[i] = string_pos(str,string_lower(text[0])) + string_length(str) - 2
	}
}
if global.text_font_substring_use = true{
	for (var i = 0; i < global.text_font_size; ++i){
		var str = string_lower(global.text_font_substrings[i])
		global.text_font_first[i] = string_pos(str,string_lower(text[0])) - 1
		global.text_font_last[i] = string_pos(str,string_lower(text[0])) + string_length(str) - 2
	}
}
if global.text_outline_substring_use = true{
	for (var i = 0; i < global.text_outline_size; ++i){
		var str = string_lower(global.text_outline_substrings[i])
		global.text_outline_first[i] = string_pos(str,string_lower(text[0])) - 1
		global.text_outline_last[i] = string_pos(str,string_lower(text[0])) + string_length(str) - 2
	}
}
if global.text_pause_substring_use = true{
	for (var i = 0; i < global.text_pause_size; ++i){
		var str = string_lower(global.text_pause_substrings[i])
		global.text_pause_int[i] = string_pos(str,string_lower(text[0])) + string_length(str) - 1
	}
}

//font set default
for (var i = 0; i < array_length(font_char); ++i) {
	font_char[i] = font
}

//set array for effects on each letter
for (var i = 0; i < string_length(text[0]); ++i){
	//
	for (var j = 0; j < global.text_wave_size; ++j) {
		if i >= global.text_wave_first[j] and i <= global.text_wave_last[j]{
			waving_char[i] = true
		}
	}
	
	//
	for (var j = 0; j < global.text_shake_size; ++j) {
		if i >= global.text_shake_first[j] and i <= global.text_shake_last[j]{
			shaking_char[i] = true
		}
	}
	
	//
	for (var j = 0; j < global.text_color_size; ++j) {
		if i >= global.text_color_first[j] and i <= global.text_color_last[j]{
			color_change_char[i] = true
			color_char_top[i] = global.text_color_top[j]
			color_char_bot[i] = global.text_color_bot[j]
			break;
		}
	}
	
	//
	for (var j = 0; j < global.text_font_size; ++j) {
		if i >= global.text_font_first[j] and i <= global.text_font_last[j]{
			font_char[i] = global.text_font_id[j]//selected font
		}
	}
	
	//
	for (var j = 0; j < global.text_outline_size; ++j) {
		if i >= global.text_outline_first[j] and i <= global.text_outline_last[j]{
			outline_col[i] = global.text_outline_color[j]//selected outline color
		}
	}
	
	//
	for (var j = 0; j < global.text_pause_size; ++j) {
		if i == global.text_pause_int[j]{
			pause_dur[i] = global.text_pause_duration[j]//selected pause duration
		}
	}
}



// ------------------ Lines Setup -----------------------------------------------------

// save lines to add to the log later
for (var h = 0; h < array_length(text); ++h){
	saved_text[h] = text[h]
}

// add line breaks (this was hard to code)
var max_lines = array_length(text)
line_breaks = array_create(max_lines,array_create(global.max_chars))
init = true

var w = global.text_x*2;

draw_set_font(font)
if (global.text_font_all==true){
	draw_set_font(global.text_font_id[0])
}

for (var g = 0; g < array_length(text); ++g){ //cycle through text arrays
	var tt = text[g]
	if string_length(text[g]) > global.max_chars-1{
		show_message("ERROR: Textbox string too long! Increase global.max_chars in var_init() to fix this.")
		game_end()
	}
	
	var str = ""
	var let = ""
	//var str_ww = 0
	var line_s = ds_list_create()
	var sw_;
	for (var i = 1; i < string_length(tt)+1; ++i){ // cycle through each letter
		let = string_copy(tt,i,1);
		str += let;
		//draw_set_font(font_char[i])
		//str_ww += string_width(let)
		sw_ = string_width(str);
		if ((sw_ * text_size) > w){
			ds_list_add(line_s,str)
			str = ""
			//str_ww = 0
		}
	}
	ds_list_add(line_s,str)
	
	
	var total = 0
	for (var v = 0; v < ds_list_size(line_s)-1; ++v){ // cycle through lines
		var stri = ds_list_find_value(line_s,v)

		var lastspace = 0 // find last space
		for (var k = 0; k < string_length(stri); ++k){ 
			var let = string_copy(stri,k-1,1)
			if let == " "{
				lastspace = k-1	
			}
		}
		
		var leng = string_length(string_copy(stri,0,lastspace)) // fix next line
		var lets = string_length(stri) - leng;
		var lastletters = string_copy(stri,lastspace,lets+1)
		ds_list_set(line_s,v+1,string_insert(lastletters,ds_list_find_value(line_s,v+1),0))
		
		ds_list_set(line_s,v,string_copy(stri,0,lastspace))
		
		for (var p = lastspace+total; p < string_length(tt); p++) { // break line array
			line_breaks[g][p] ++
		}
		total += string_length(string_copy(stri,0,lastspace)) - 1
	} 
	
	//for (var v = 0; v < ds_list_size(line_s); ++v){
	//	show_message(ds_list_find_value(line_s,v))
	//}
	
	ds_list_destroy(line_s)
	
}


