///@param message
function show_error_message(argument0){
	if window_get_fullscreen(){full = true}
	if full == true{window_set_fullscreen(false)}
	
	show_message(argument0)
	
	if full = true{window_set_fullscreen(true)}
}
