function load_options(){
	var filename = "Options"
	
	if file_exists(filename){
		ini_open(filename);
		
		if ini_read_real("Save","fullscreen",false){fullscreen_toggle()}
		global.screenshake_enable = ini_read_real("Save","screenshake",true);
		audio_master_gain(ini_read_real("Save","audio",0));
		global.text_speed = ini_read_real("Save","text_speed",0);
		
		ini_close();
	}
}
