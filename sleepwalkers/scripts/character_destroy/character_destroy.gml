// уничтожить персонажа

///@param name
///@param dissapear_type
///@param end_event
function character_destroy(argument0, argument1, argument2) {
	var char = ds_map_find_value(global.characters, argument0)
	if !is_undefined(char){
		char.dissapear_type = argument1
		char.end_event_destroy = argument2
	}
}
