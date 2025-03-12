function scene_cleanup(){
	
	ds_map_clear(global.characters);
	
	global.event_id = 0;
	global.event_count = 1;
	global.scene_current = 0;
	global.event_finished = false;
	
	if global.bgm != noone{audio_sound_gain(global.bgm,1,0)}
	global.bgm = noone;
	global.bgm_id = -1;
	
	global.text_wave_substring_use = false
	global.text_color_substring_use = false
	global.text_font_substring_use = false
	global.text_wave_size = 0
	global.text_color_size = 0
	global.text_font_size = 0
	global.text_font_all = false
	
	ds_grid_clear(global.textlog,0)

	audio_stop_all();
	
	if instance_exists(obj_textbox){
		instance_destroy(obj_textbox)	
	}
	if instance_exists(obj_character){
		instance_destroy(obj_character)	
	}
	if instance_exists(obj_choice){
		instance_destroy(obj_choice)	
	}
	if instance_exists(obj_backdrop){
		instance_destroy(obj_backdrop)	
	}
	if instance_exists(obj_fade){
		instance_destroy(obj_fade)	
	}
	if instance_exists(obj_sound){
		instance_destroy(obj_sound)	
	}
	if instance_exists(obj_wait){
		instance_destroy(obj_wait)	
	}
	if instance_exists(obj_effect){
		instance_destroy(obj_effect)	
	}
	if instance_exists(obj_save_panel){
		instance_destroy(obj_save_panel)		
	}
	if instance_exists(obj_parent_hover){
		instance_destroy(obj_parent_hover)	
	}
	
	global.hover_active = 1
	
	scene_options_create()
}
