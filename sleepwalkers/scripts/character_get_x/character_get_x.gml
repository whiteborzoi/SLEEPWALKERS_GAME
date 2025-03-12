// Возвращает значение x для данного персонажа

function character_get_x(character){
	var char_id = ds_map_find_value(global.characters, character);
	var xx = char_id.x;
	return (xx);	
}
