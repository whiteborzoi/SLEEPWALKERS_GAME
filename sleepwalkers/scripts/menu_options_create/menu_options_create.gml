function menu_options_create(){
	var hh = 0;
	draw_set_font(global.font_options)

	for (var i = 0; i < array_length(global.menu_options); ++i) {

		var inst = instance_create_depth(global.menu_options_x, global.menu_options_y + hh + (global.menu_options_sep*i), 0, obj_menu_option)
		inst.idd = i
		inst.image_index = i
		
		hh += (string_height(global.menu_options[i])*global.menu_options_size)*.5;
		if i < array_length(global.menu_options) - 1{
			hh += (string_height(global.menu_options[i+1])*global.menu_options_size)*.5;
		}
	}
}
