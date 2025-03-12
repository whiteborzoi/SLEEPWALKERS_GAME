if global.cursor_clicked{
	if position_meeting(obj_cursor.x,obj_cursor.y,id){
		if global.screenshake_enable == false{
			global.screenshake_enable = true	
			audio_play_sound(global.so_choice_select,0,0) 
		}else{
			global.screenshake_enable = false
			audio_play_sound(global.so_choice_select,0,0) 
		}
	}
}

image_index = global.screenshake_enable;
