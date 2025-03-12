function textbox_reset(){
	instance_destroy(obj_letter)
	str_ww = 0
	line_last = 0
	pause_last = 0
	pause_frames = 0
	
	var fnt = font
	if (global.text_font_all){
		fnt = global.text_font_id[0]
	}
	
	global.text_wave_substring_use = false
	global.text_shake_substring_use = false
	global.text_color_substring_use = false
	global.text_font_substring_use = false
	global.text_pause_substring_use = false
	global.text_font_all = false
	global.text_outline_size = 0
	global.text_shake_size = 0
	global.text_color_size = 0
	global.text_wave_size = 0
	global.text_font_size = 0
	global.text_pause_size = 0
	
	textlog_add(name_id,saved_text[line],fnt,font_color_top,font_color_bottom,name_font,name_color_top,name_color_bottom)
	
	line ++
	if line > max_lines{alarm[3] = 1/*Destroy*/ line -= 1}
	text_current = ""
	letters = 0
}