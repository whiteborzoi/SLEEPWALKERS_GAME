function save_options(){
	var filename = "Options"
	if file_exists(filename){file_delete(filename)}
	ini_open(filename);
		
	//time data
	ini_write_real("Save","fullscreen",window_get_fullscreen());
	ini_write_real("Save","screenshake",global.screenshake_enable);
	ini_write_real("Save","audio",audio_get_master_gain(0));
	ini_write_real("Save","text_speed",global.text_speed);
	
	ini_close();
}
