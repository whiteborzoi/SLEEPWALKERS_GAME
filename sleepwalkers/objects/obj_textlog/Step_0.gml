if global.cursor_click and scrolling = false{
	scrolling = true
	myo = obj_cursor.y	
}
if scrolling == true{
	scroll += obj_cursor.y-myo
	myo = obj_cursor.y	
	if !global.cursor_click{
		scrolling = false
	}
}	

num = round(scroll/192)

var scrollspd = 48
if mouse_wheel_up(){
	scroll += scrollspd
}
if mouse_wheel_down(){
	scroll -= scrollspd	
}

scroll = min(scroll,(global.textlog_max-draw_num)*192)
scroll = max(scroll,0)
