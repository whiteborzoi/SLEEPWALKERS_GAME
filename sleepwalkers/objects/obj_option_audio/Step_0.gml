if global.cursor_click and position_meeting(obj_cursor.x,obj_cursor.y,id){
	moving = true
}
if moving == true{
	x = obj_cursor.x
	x = max(x,x_origin-dist)
	x = min(x,x_origin+dist)
	audio_master_gain((x-(x_origin-dist)) / (dist*2))	
}
if !global.cursor_click and moving == true{
	moving = false	
}
image_index = moving
