// создать персонажа

///@param name
///@param sprite
///@param x
///@param y
///@param appear_type
///@param end_event
///@param speech
///@param size
///@param flip
function character_create(argument0, argument1, argument2, argument3, argument4 = appear_instant, argument5 = false, argument6 = noone, argument7 = 1, argument8 = false){
	
	// destroys old char if existing, fixes saving bug
	if ds_map_exists(global.characters, argument0){
		var char = ds_map_find_value(global.characters, argument0)
		instance_destroy(char)
		ds_map_delete(global.characters, argument0)
	}
	
	var _depth = depth_mid;
	
	var char = instance_create_depth(argument2, argument3, _depth, obj_character)
	ds_map_add(global.characters,argument0,char)
	
	char.name_id = argument0
	char.sprite_index = argument1

	char.appear_type = argument4
	
	char.end_event_create = argument5
	
	// optionals
	char.speech = argument6
	
	char.size = argument7
	char.image_xscale = argument7
	char.image_yscale = argument7
	
	char.flip = argument8
	if argument8 == true{char.image_xscale = -argument7}
	
}
