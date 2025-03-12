//set attributes
draw_set_font(font)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
wav = wave(-global.text_sep/8,global.text_sep/8,2,letter_i*100) * wavy;
shakex = shaky * irandom_range(-1,1);
shakey = shaky * irandom_range(-1,1);

//letter shadow
draw_set_color(global.shadow_color)
draw_set_alpha(global.shadow * image_alpha)
var dist = global.shadow_distance
draw_text_transformed(x+shakex+dist,y+wav+shakey+dist,letter,text_size,text_size,0)
draw_set_alpha(1)	

//outline
if outline_col != -1{
	draw_outline(x+shakex,y+wav+shakey,letter,1,1,outline_col)
}

//letter
draw_text_transformed_color(x+shakex,y+wav+shakey,letter,text_size,text_size,0,col_top,col_top,col_bot,col_bot,image_alpha)

