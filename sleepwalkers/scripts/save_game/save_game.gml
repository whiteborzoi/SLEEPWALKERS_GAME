function save_game(filename){
	//show_debug_message("Saved game.")
	
	if file_exists(filename){file_delete(filename)}
	ini_open(filename);
		
	// time data
	ini_write_real("Save","playtime_min",global.playtime_minutes);
	ini_write_real("Save","playtime_hour",global.playtime_hours);
	
	// scene and event
	ini_write_real("Save","event",global.event_count);
	ini_write_real("Save","scene",global.scene_current);
	
	// backdrop
	ini_write_string("Save","backdrop",sprite_get_name(global.backdrop));
	ini_write_real("Save","backdrop_stretch",global.backdrop_stretch);
	
	// music
	ini_write_string("Save","bgm",audio_get_name(global.bgm_id));
	var track_pos=0;
	if audio_is_playing(global.bgm) track_pos = audio_sound_get_track_position(global.bgm);
	ini_write_real("Save","bgm_tp",track_pos);

	// choices
	var list = ds_list_create()
	for (var i = 0; i < array_length(global.choice); ++i) {
		ds_list_add(list,global.choice[i])
	}
	ini_write_string("Save","choices",ds_list_write(list))
	ds_list_destroy(list)
	
	// textbox
	var textbox_index = 0
	if instance_exists(obj_textbox){
		textbox_index = obj_textbox.line
	}
	ini_write_real("Save","textbox",textbox_index)

	// characters
	var gg = ds_grid_create(ds_map_size(global.characters),14)
	
	var lastkey = ds_map_find_first(global.characters)
	for (var i = 0; i < ds_map_size(global.characters); i++){
		
		var char_obj = global.characters[? lastkey]
		ds_grid_add(gg,i,0,lastkey)
		ds_grid_add(gg,i,1,char_obj.name_id)
		ds_grid_add(gg,i,2,char_obj.x)
		ds_grid_add(gg,i,3,char_obj.y)
		ds_grid_add(gg,i,4,sprite_get_name(char_obj.sprite_index))
		ds_grid_add(gg,i,5,char_obj.flip)
		ds_grid_add(gg,i,6,char_obj.font_color_top)
		ds_grid_add(gg,i,7,char_obj.font_color_bottom)
		
		var spch = noone;

		if char_obj.speech >= 0{spch = audio_get_name(char_obj.speech)}
		ds_grid_add(gg,i,8,spch)

		ds_grid_add(gg,i,9,font_get_name(char_obj.font))
		ds_grid_add(gg,i,10,char_obj.size)
		ds_grid_add(gg,i,11,char_obj.name_color_top)
		ds_grid_add(gg,i,12,char_obj.name_color_bottom)
		ds_grid_add(gg,i,13,char_obj.depth)
		
		lastkey = ds_map_find_next(global.characters,lastkey)
	}
	
	ini_write_string("Save","characters",ds_grid_write(gg));
	
	ds_grid_destroy(gg)
	
	// any additional content should be saved here
	
	ini_close();
}
