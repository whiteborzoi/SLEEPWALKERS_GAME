// Устанавливает спрайты курсора, по умолчанию и для выбора

function cursor_set(default_spr, select_spr) {
	global.cursor_default = default_spr;
	global.cursor_select = select_spr;

	window_set_cursor(cr_none);

	if !instance_exists(obj_cursor){
		instance_create_depth(0,0,0,obj_cursor)	
	}
}
