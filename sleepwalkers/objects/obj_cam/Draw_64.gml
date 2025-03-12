///@desc DEBUG DRAW
if (global.debug_mode){
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	draw_set_halign(fa_top)
	draw_set_alpha(1)
	draw_text_outline(32,64,"Dev Debug Mode  "+string(fps),1,1,c_blue,c_black)
	draw_text_outline(32,96,"current event: "+string(global.event_count),1,1,c_blue,c_black)
	//
	//draw_text_outline(32,128,"hover global: "+string(global.hover_active),1,1,c_blue,c_black)
}

