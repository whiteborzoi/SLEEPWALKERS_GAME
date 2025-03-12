//events
if position_meeting(obj_cursor.x,obj_cursor.y,id) and (global.cursor_clicked) and (active==1){
	switch (string_lower(global.menu_options[idd])){
		case("новая игра"):
			room_goto_next()
		break;
		case("загрузить игру"):
			hover_progress()
			var sp = instance_create_depth(0,0,0,obj_save_panel)
			sp.mode = 1
			global.load_nextroom = true
		break;
		case("настройки"):
			hover_progress()
			options_create();
		break;
		case("выход"):
			game_end()
		break;
	}
	xscale = (global.menu_options_size*1.4)
	yscale = (global.menu_options_size*0.4)
	audio_play_sound(global.so_choice_select,0,0) 
}

xscale = lerp(xscale, global.menu_options_size, 0.1)
yscale = lerp(yscale, global.menu_options_size, 0.1)

