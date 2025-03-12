function textlog_add(name,line,font,color_top,color_bot,name_font,name_color_top,name_color_bot){
	for (var i = global.textlog_max-1; i > 0; i--) {
		ds_grid_set(global.textlog,i,0,ds_grid_get(global.textlog,i-1,0))
		ds_grid_set(global.textlog,i,1,ds_grid_get(global.textlog,i-1,1))
		ds_grid_set(global.textlog,i,2,ds_grid_get(global.textlog,i-1,2))
		ds_grid_set(global.textlog,i,3,ds_grid_get(global.textlog,i-1,3))
		ds_grid_set(global.textlog,i,4,ds_grid_get(global.textlog,i-1,4))
		ds_grid_set(global.textlog,i,5,ds_grid_get(global.textlog,i-1,5))
		ds_grid_set(global.textlog,i,6,ds_grid_get(global.textlog,i-1,6))
		ds_grid_set(global.textlog,i,7,ds_grid_get(global.textlog,i-1,7))
	}
	ds_grid_set(global.textlog,0,0,name)	
	ds_grid_set(global.textlog,0,1,line)
	ds_grid_set(global.textlog,0,2,font)
	ds_grid_set(global.textlog,0,3,color_top)
	ds_grid_set(global.textlog,0,4,color_bot)
	ds_grid_set(global.textlog,0,5,name_font)
	ds_grid_set(global.textlog,0,6,name_color_top)
	ds_grid_set(global.textlog,0,7,name_color_bot)
	
}

