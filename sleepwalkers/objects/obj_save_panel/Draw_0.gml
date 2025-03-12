//darken background
draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(-(global.screen_buff+1),-(global.screen_buff+1),global.game_width+global.screen_buff,global.game_height+global.screen_buff,false)
draw_set_alpha(1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(global.font_options)
var text = ""
if deleting == false{
	if mode == 0{
		text = "Save to which file?"
	}else{
		text = "Load which file?"
	}
}else{
	text = "Delete which file?"
}

draw_text_outline(global.game_width/2,128,text,2,2,c_white,c_black)	
