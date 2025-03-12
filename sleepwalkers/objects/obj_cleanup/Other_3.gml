///@desc Cleanup

//prevents memory leaks
if ds_exists(global.characters,ds_type_map){
	ds_map_destroy(global.characters)	
}
if ds_exists(global.textlog,ds_type_grid){
	ds_grid_destroy(global.textlog)
}
