// Sets the game size, default resolution
// The screen's width will change to match the moniter's aspect ratio,
// So prioritize deciding the HEIGHT (it will NOT change)

function resolution_init(ideal_width, ideal_height, max_ratio, min_ratio){
	
	//change screen ratio to match display (changes width to match height based on moniter ratio)
	var aspect_ratio = display_get_width()/display_get_height();
	aspect_ratio = clamp(aspect_ratio, min_ratio, max_ratio);
	ideal_width = round(ideal_height*aspect_ratio);

	//check for odd number
	if (ideal_width and 1) ideal_width ++;

	//create camera
	global.camera = camera_create_view(0, 0, ideal_width, ideal_height);

	//set camera
	surface_resize(application_surface,ideal_width,ideal_height);
	display_set_gui_size(ideal_width, ideal_height)
	window_set_size(ideal_width,ideal_height);
	window_set_position(display_get_width()/2 - ideal_width/2,display_get_height()/2 - ideal_height/2)
	
	global.game_width = ideal_width;
	global.game_height = ideal_height;
}
