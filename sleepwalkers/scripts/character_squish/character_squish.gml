// Squish the char's xscale and yscale

function character_squish(char, xscale, yscale, seconds, end_event){
	var char_id = ds_map_find_value(global.characters, char);
	if char_id.image_xscale == -1{xscale = -xscale}
	char_id.image_xscale = xscale;
	char_id.image_yscale = yscale;
	if xscale < 0{xscale = -xscale}
	char_id.squishing = true
	char_id.squish_time_x = abs(1-xscale)/(seconds*60);
	char_id.squish_time_y = abs(1-yscale)/(seconds*60);
	char_id.end_event_squish = end_event;
}
