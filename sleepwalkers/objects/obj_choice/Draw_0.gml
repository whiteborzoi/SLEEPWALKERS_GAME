if image_alpha = 1{
	draw_self()

	//set
	draw_set_color(c_white)
	draw_set_font(font)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	var sep = global.text_sep
	var w = global.choice_width

	//draw text
	draw_text_ext_transformed(x,y,text,sep,w,text_size,text_size * image_yscale,0)
	
}

