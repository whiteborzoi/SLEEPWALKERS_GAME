// Changes the depth of the character

///@param char
///@param depth
function character_depth(char, depth_){
	var char_id = ds_map_find_value(global.characters, char);
	char_id.depth = depth_
}
