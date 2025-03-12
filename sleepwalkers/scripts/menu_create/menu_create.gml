function menu_create(){
	mainmenu = true	
	sprite_index = menu_background
	if background_strech == true{
		image_xscale = global.game_width/sprite_get_width(sprite_index)
		image_yscale = global.game_height/sprite_get_height(sprite_index)
	}else{
		if sprite_get_width(sprite_index)/sprite_get_height(sprite_index) < global.game_width/global.game_height{
			image_xscale = global.game_width/sprite_get_width(sprite_index)
			image_yscale = image_xscale
			x = 0
			y = 0
		}else{
			image_yscale = global.game_height/sprite_get_height(sprite_index)
			image_xscale = image_yscale
			var ww = sprite_get_width(sprite_index) * image_xscale
			var www = ww - global.game_width
			x = -www/2
			y = 0
		}
	}
	var logo = instance_create_depth(menulogo_x,menulogo_y,-1,obj_menulogo)
	logo.sprite_index = menu_logo
	logo.image_xscale = menulogo_size
	logo.image_yscale = menulogo_size
	logo.anti = menulogo_antialias
	
	menu_options_create()
}
