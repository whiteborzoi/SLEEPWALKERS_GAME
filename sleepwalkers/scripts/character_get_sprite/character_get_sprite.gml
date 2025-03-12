// Возвращает индекс спрайта заданного персонажа

function character_get_sprite(character){
	var char_id = ds_map_find_value(global.characters, character);
	var ss = char_id.sprite_index;
	return (ss);
}

