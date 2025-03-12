// Уничтожает всех существующих персонажей на сцене
function character_cleanup(){
	if instance_exists(obj_character){
		instance_destroy(obj_character)
	}
	ds_map_empty(global.characters)
}

