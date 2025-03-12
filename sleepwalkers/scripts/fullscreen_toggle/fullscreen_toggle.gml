// Toggles fullscreen mode

function fullscreen_toggle(){
	if window_get_fullscreen(){
		
		window_set_fullscreen(false)
	
		obj_cam.alarm[0] = 10


	}else{

		window_set_fullscreen(true)
		
		resolution_change(display_get_width(),display_get_height())


		
	}
}

