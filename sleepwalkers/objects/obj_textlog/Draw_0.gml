//darken background
draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(-(global.screen_buff+1),-(global.screen_buff+1),global.game_width+global.screen_buff,global.game_height+global.screen_buff,false)
draw_set_alpha(1)

//draw log
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_black)
for (var i = num; i < num+draw_num; ++i){
	var name = ds_grid_get(global.textlog,i,0)
	var line = ds_grid_get(global.textlog,i,1)
	var font = ds_grid_get(global.textlog,i,2)
	var color_top = ds_grid_get(global.textlog,i,3)
	var color_bot = ds_grid_get(global.textlog,i,4)
	var name_font = ds_grid_get(global.textlog,i,5)
	var name_color_top = ds_grid_get(global.textlog,i,6)
	var name_color_bot = ds_grid_get(global.textlog,i,7)

	if name == 0{name = ""}
	if line == 0{line = ""}
	
	
	//names
	draw_set_font(name_font)
	var namex = global.game_width/2 - 256 - 128;
	var namey = global.game_height-128 - (192*(i-num)) + scroll - (num*192);
	
	var sep = -1
	var width = 256
	draw_text_ext_transformed(namex+2,namey+2,name,sep,width,1.2,1.2,0)
	draw_text_ext_transformed_color(namex, namey, name,sep,width, 1.2, 1.2, 0, name_color_top,name_color_top,name_color_bot,name_color_bot,1)
	
	//lines
	draw_set_font(font)
	var linex = global.game_width/2;
	var liney = global.game_height-128 - (192*(i-num)) + scroll - (num*192);
	
	draw_text_ext(linex+2, liney+2, line, -1, global.game_width/2-64)
	draw_text_ext_color(linex, liney, line, -1, global.game_width/2-64,color_top,color_top,color_bot,color_bot,1)
	
}
