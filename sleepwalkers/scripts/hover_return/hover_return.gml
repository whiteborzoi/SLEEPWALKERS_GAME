function hover_return(){
	for (var i = 0; i < instance_number(obj_parent_hover); ++i) {
		var inst = instance_find(obj_parent_hover,i)
		inst.active += 1
	}
	global.hover_active += 1
	
	//
	global.cursor_clicked = false
}
