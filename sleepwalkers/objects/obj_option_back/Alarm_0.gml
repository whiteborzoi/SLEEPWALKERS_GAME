/// @description Delayed Destroy
instance_destroy(obj_option_fullscreen);
instance_destroy(obj_option_screenshake);
instance_destroy(obj_option_audio);
instance_destroy(obj_option_textspeed);
hover_return()
instance_destroy()

//save preferences
save_options();
