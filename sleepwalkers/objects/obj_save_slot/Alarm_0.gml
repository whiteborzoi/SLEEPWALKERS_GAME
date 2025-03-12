///@desc Setup
mode = obj_save_panel.mode
filename = ("Save"+string(_id));
thumb_filename = ("Screen"+string(_id)+".png");
if file_exists(filename){
	empty = false
	timedata_str = load_timedata(filename)
	thumb_sprite = sprite_add("Screen"+string(_id)+".png",0,false,false,0,0)
}

