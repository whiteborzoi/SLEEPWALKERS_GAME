///@desc Autosave
if instance_exists(obj_scenes) and global.autosave == true{
	save_game("Save0")
	screen_save("Screen0.png");
}
alarm[1] = global.autosave_frequency
