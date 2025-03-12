// отражает персонажа по горизонтали

function character_flip(char){
	var char_id = ds_map_find_value(global.characters, char);
	if char_id.flip == false{char_id.image_xscale = -char_id.size char_id.flip = true}else{char_id.image_xscale = char_id.size char_id.flip = false}
}
