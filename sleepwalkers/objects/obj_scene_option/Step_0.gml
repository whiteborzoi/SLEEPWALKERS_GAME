//events
if position_meeting(obj_cursor.x,obj_cursor.y,id) and (global.cursor_clicked) and (active==1) and image_alpha == 1{
	switch (string_lower(global.scene_options[idd])){
		case("загрузить"):
			hover_progress()
			var sp = instance_create_depth(0,0,0,obj_save_panel)
			sp.mode = 1
		break;
		case("сохранить"):
			hover_progress()
			instance_create_depth(0,0,0,obj_save_panel)
		break;
		case("auto"):
			if global.autotext == false{
				global.autotext = true	
			}else{
				global.autotext = false	
			}
		break;
		case("log"):
			hover_progress()
			instance_create_depth(0,0,0,obj_textlog)
		break;
		case("options"):
			hover_progress()
			options_create();
		break;
		case("выход"):
			quit_to_menu()
		break;
	}
	xscale = (global.scene_options_size*1.4)
	yscale = (global.scene_options_size*0.4)
	audio_play_sound(global.so_choice_select,0,0) 
}

xscale = lerp(xscale, global.scene_options_size, 0.1)
yscale = lerp(yscale, global.scene_options_size, 0.1)

