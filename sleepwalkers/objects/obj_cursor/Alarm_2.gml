///@desc Cursor sprite update
if instance_exists(obj_parent_hover) and position_meeting(x,y,obj_parent_hover){
	
	var list = ds_list_create()
	var yes = false
	collision_circle_list(x,y,1,obj_parent_hover,true,true,list,false)
	for (var i = 0; i < ds_list_size(list); ++i) {
		var inst = ds_list_find_value(list,i)
		if inst.active == 1{
			yes = true
		}
	}
	ds_list_destroy(list)
	
	if (yes == true){
		cursor_select()
	}else{
		cursor_default()	
	}
}else{
	cursor_default()	
}

alarm[2] = cu_frequency

