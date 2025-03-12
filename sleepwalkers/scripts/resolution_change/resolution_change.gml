// Change window resolution

///@param resolution_width
///@param resolution_height
function resolution_change(resx, resy){
	
	surface_resize(application_surface, resx, resy);
	window_set_size(resx, resy);
	window_set_position(display_get_width()/2 - resx/2,display_get_height()/2 - resy/2)
	
}
