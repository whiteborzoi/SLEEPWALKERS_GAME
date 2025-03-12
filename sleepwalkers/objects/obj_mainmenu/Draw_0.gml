if mainmenu == false{
	gpu_set_tex_filter(logo_antialias)
	draw_self()

	draw_set_alpha(fade_alpha)
	draw_set_color(c_black)
	draw_rectangle(-1,-1,global.game_width,global.game_height,false)
	draw_set_alpha(1)
}else{
	draw_self()
}

gpu_set_tex_filter(global.antialiasing)
