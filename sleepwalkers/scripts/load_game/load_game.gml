function load_game(filename){
	
	if file_exists(filename){
		//
		ini_open(filename);
		
		// time data
		global.playtime_minutes = ini_read_real("Save","playtime_min", 0);
		global.playtime_hours = ini_read_real("Save","playtime_hour", 0);
		
		// event and scene
		global.event_count = ini_read_real("Save","event",0);
		global.scene_current = ini_read_real("Save","scene",0);
		
		// backdrop
		global.backdrop = asset_get_index(ini_read_string("Save","backdrop",noone));
		global.backdrop_stretch = ini_read_real("Save","backdrop_stretch",0)
		backdrop_set(global.backdrop,global.backdrop_stretch)
		
		// music
		var bgm_name = ini_read_string("Save","bgm","");
		var bgm = asset_get_index(bgm_name);
		var bgm_tp = ini_read_real("Save","bgm_tp",0);
		if audio_exists(bgm){ 
			play_bgm_instant(bgm)
			audio_sound_set_track_position(global.bgm,bgm_tp)
		}

		// choices
		var list = ds_list_create()
		var ch_str = ini_read_string("Save","choices","");
		ds_list_read(list,ch_str)
		for (var i = 0; i < ds_list_size(list); ++i) {
			global.choice[i] = ds_list_find_value(list,i)
		}
		ds_list_destroy(list)
		
		// textbox
		global.textbox_saveline = ini_read_real("Save","textbox",0)
		
		// characters
		var gg = ds_grid_create(99,13) // max characters is 99
		var gg_str = ini_read_string("Save","characters","");
		ds_grid_read(gg,gg_str)
		for (var i = 0; i < ds_grid_width(gg); ++i) {
			var char_id = ds_grid_get(gg,i,0)
			var char_name = ds_grid_get(gg,i,1)
			var xx = ds_grid_get(gg,i,2)
			var yy = ds_grid_get(gg,i,3)
			var spr = asset_get_index(ds_grid_get(gg,i,4))
			var flip = ds_grid_get(gg,i,5)
			var colt = ds_grid_get(gg,i,6)
			var colb = ds_grid_get(gg,i,7)
			
			var spch_load = ds_grid_get(gg,i,8)
			if spch_load != noone{spch_load = asset_get_index(spch_load)}
			var spch = spch_load
			
			var fnt = asset_get_index(ds_grid_get(gg,i,9))
			var sze = ds_grid_get(gg,i,10)
			var ncolt = ds_grid_get(gg,i,11)
			var ncolb = ds_grid_get(gg,i,12)
			var ddp = ds_grid_get(gg,i,13)
			
			var inst = instance_create_depth(xx,yy,2,obj_character)
			inst.sprite_index = spr
			inst.flip = flip
			inst.font_color_top = colt
			inst.font_color_bottom = colb
			inst.speech = spch
			inst.font = fnt
			inst.name_id = char_name
			inst.image_alpha = 1
			inst.size = sze
			inst.image_xscale = sze
			if (flip) inst.image_xscale *= -1;
			inst.image_yscale = sze
			inst.name_color_top = ncolt
			inst.name_color_bottom = ncolb
			inst.depth = ddp
			
			ds_map_add(global.characters,char_id,inst)
		
		}
		ds_grid_destroy(gg)
		
		//
		ini_close();
		
	}
}
