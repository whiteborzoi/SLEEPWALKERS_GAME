// Возвращает ширину заданного персонажа с учетом масштаба
function character_get_width(character){
	var char_id = ds_map_find_value(global.characters, character);
	var ww = sprite_get_width(char_id.sprite_index) * char_id.size;
	return (ww);
}
