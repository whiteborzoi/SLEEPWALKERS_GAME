if global.cursor_clicked{
	if position_meeting(obj_cursor.x,obj_cursor.y,id){
		fullscreen_toggle()
		audio_play_sound(global.so_choice_select,0,0) 
	}
}

image_index = window_get_fullscreen();
