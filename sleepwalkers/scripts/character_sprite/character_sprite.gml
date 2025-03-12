// Изменить спрайт персонажа

function character_sprite(char, sprite){
	var char_id = ds_map_find_value(global.characters, char)
	char_id.sprite_index = sprite
}
