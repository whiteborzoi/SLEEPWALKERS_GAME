// Возвращает значение y для данного персонажа

function character_get_y(character){
	var char_id = ds_map_find_value(global.characters, character);
	var yy = char_id.y;
	return (yy);
}
