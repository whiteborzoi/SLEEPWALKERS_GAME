// Make character do a small jump up

function character_hop(char, hop_power, end_event){
	var char_id = ds_map_find_value(global.characters, char);
	char_id.hop = true;
	char_id.hop_y = char_id.y;
	char_id.hop_vsp = -hop_power
	char_id.end_event_hop = end_event;
}
