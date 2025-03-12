// Flashes the char a color

function character_flash(char, color, seconds, end_event){
	var char_id = ds_map_find_value(global.characters, char)
	char_id.flash_color = color
	char_id.flash_decay_rate = (1/(seconds*60))
	char_id.end_event_flash = end_event
	
	char_id.flash_alpha = 1
}
