draw_set_font(global.font_options)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(image_alpha)
draw_text_outline(x,y,global.scene_options[idd],xscale,yscale,c_white,c_black)

if loading == true{
	draw_set_alpha(alpha)
	draw_set_color(c_black)
	draw_rectangle(-1,-1,display_get_width(),display_get_height(),false)	
	draw_set_alpha(1)
}
else if alpha > 0{
	alpha -= 0.1
	draw_set_alpha(alpha)
	draw_set_color(c_black)
	draw_rectangle(-1,-1,display_get_width(),display_get_height(),false)	
	draw_set_alpha(1)
}