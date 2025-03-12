// Возвращает высоту заданного персонажа с учетом масштаба
function character_get_height(character){
	var char_id = ds_map_find_value(global.characters, character);
	var hh = sprite_get_height(char_id.sprite_index) * char_id.size;
	return (hh);	
}
