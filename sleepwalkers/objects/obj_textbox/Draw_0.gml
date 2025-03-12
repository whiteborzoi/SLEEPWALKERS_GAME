if !global.hud_invisible{
	//
	draw_self();

	//set
	var name_x = global.name_x;
	var name_y = global.name_y;
	var text_x = global.text_x;
	//var text_y = global.text_y;
	//var col_top = name_color_top;
	//var col_bot = name_color_bottom;
	var name_colt = name_color_top;
	var name_colb = name_color_bottom;

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	//draw name shadow
	draw_set_font(name_font)
	draw_set_color(global.shadow_color)
	draw_set_alpha(global.shadow)
	var dist = global.shadow_distance
	draw_text_transformed(x-name_x+dist,y-name_y+dist, name_id, name_size, name_size, 0)
	draw_set_alpha(1)	

	//draw name
	draw_text_transformed_color(x-name_x,y-name_y, name_id, name_size, name_size, 0, name_colt, name_colt, name_colb, name_colb, 1)

	// continue icon 
	if text_current == text[line] and !instance_exists(obj_choice){
		var spr = global.textbox_icon;
		if (global.autotext) spr = global.autotext_icon;
		draw_sprite(spr,icon_index,x+text_x+32,y-32)
	}
}

/*	OLD TEXT DRAWING SYSTEM 
	ALL DONE IN TEXTBOX DRAW EVENT INSTEAD OF OBJ SYSTEM
	MUCH WORSE FOR PERFORMANCE

	
//draw text
var break_x = 0
var wavey;
var shakex;
var shakey;

for (var i = 0; i < string_length(text_current); ++i){
	//wave set
	wavey = wave(-sep/8,sep/8,2,i*100) * (waving_char[i])
	
	shakex = shaking_char[i] * irandom_range(-1,1)
	shakey = shaking_char[i] * irandom_range(-1,1)
	
	//color set
	if (color_change_char[i]){
		col_t = color_char_top[i]
		col_b = color_char_bot[i]
	}else{
		col_t = col_top
		col_b = col_bot
	}
	
	//font set
	draw_set_font(font_char[i])
	
	//set up lines
	var lines = floor(string_width(string_copy(text_current,1,i))/w);
	
	//this magic number seems to fix the line break spacing problem :/
	if lines > 0{break_x = string_width(" ")*0.6}
	
	
	//draw text shadow
	draw_set_color(global.shadow_color)
	draw_set_alpha(global.shadow)
	draw_text(x-text_x+2+string_width(string_copy(text_current,1,i))-(lines*w)-break_x+shakex, y+2-text_y+wavey+shakey+(lines*sep), string_copy(text_current,i+1,1))
	draw_set_alpha(1)
	
	//text outline
	if outline_col[i] != -1{
		draw_outline(x-text_x+string_width(string_copy(text_current,1,i))-(lines*w)-break_x+shakex, y-text_y+wavey+shakey+(lines*sep), string_copy(text_current,i+1,1), 1, 1, outline_col[i])
	}
	 
	//draw text
	draw_text_color(x-text_x+string_width(string_copy(text_current,1,i))-(lines*w)-break_x+shakex, y-text_y+wavey+shakey+(lines*sep), string_copy(text_current,i+1,1), col_t, col_t, col_b, col_b, 1)
	
}

*/
